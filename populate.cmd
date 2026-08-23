#!/usr/bin/env ruby
# frozen_string_literal: true

require "rbconfig"

root = File.expand_path("..", __dir__)
rails = File.join(root, "bin", "rails")

env = {
  "RAILS_ENV" => "development",
  "DANBOORU_DISABLE_THROTTLES" => "true"
}

Dir.chdir(root) do
  exec(env, RbConfig.ruby, rails, "runner", "db/populate.rb")
end
