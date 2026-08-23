#!/usr/bin/env ruby
# frozen_string_literal: true

require "fileutils"
require "openssl"
require "rbconfig"

ROOT = File.expand_path("..", __dir__)
RAILS = File.join(ROOT, "bin", "rails")

def run!(*args, env: {})
  ok = system(env, RbConfig.ruby, RAILS, *args)
  raise "Command failed: bin/rails #{args.join(' ')}" unless ok
end

Dir.chdir(ROOT) do
  puts "\n== Preparing OIDC signing key =="

  oidc_key = File.expand_path("~/.danbooru/oidc_signing_key")
  external_key = ENV["OIDC_SIGNING_KEY"].to_s

  if external_key.empty? && !File.exist?(oidc_key)
    FileUtils.mkdir_p(File.dirname(oidc_key))
    File.write(oidc_key, OpenSSL::PKey::RSA.new(2048).to_pem)

    begin
      File.chmod(0o600, oidc_key)
    rescue NotImplementedError, Errno::EPERM
      # Windows filesystems may not support POSIX permission modes.
    end
  end

  puts "\n== Preparing local configuration =="

  local_config = File.join(ROOT, "config", "danbooru_local_config.rb")
  sample_config = File.join(ROOT, "docker", "danbooru_local_config.rb")

  if !File.exist?(local_config) && File.exist?(sample_config)
    FileUtils.cp(sample_config, local_config)
  end

  puts "\n== Creating OpenSearch indexes =="

  run!(
    "runner",
    "[Post, PostVersion].each { |model| model.document_store.create_index! }",
    env: { "RAILS_ENV" => "development" }
  )

  puts "\n== Preparing databases =="

  run!("db:create", env: { "RAILS_ENV" => "test" })
  run!("db:schema:load", env: { "RAILS_ENV" => "development" })
  run!(
    "db:seed",
    env: {
      "RAILS_ENV" => "development",
      "DANBOORU_DISABLE_THROTTLES" => "true"
    }
  )

  puts "\n== Clearing temporary files and logs =="

  run!("log:clear", "tmp:clear")

  puts "\n== Setup complete =="
end
