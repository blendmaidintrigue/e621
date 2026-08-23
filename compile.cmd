#!/usr/bin/env ruby
# frozen_string_literal: true

require "rbconfig"

root = File.expand_path("..", __dir__)
bundle = File.join(root, "bin", "bundle")

Dir.chdir(root) do
  ok = system(RbConfig.ruby, bundle, "exec", "rails", "assets:precompile")
  exit(ok ? 0 : 1)
end
