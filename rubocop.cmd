#!/usr/bin/env ruby
# frozen_string_literal: true

require "rubygems"
require "bundler/setup"

config = File.expand_path("../.rubocop.yml", __dir__)
ARGV.unshift("--config", config) if File.file?(config)

load Gem.bin_path("rubocop", "rubocop")
