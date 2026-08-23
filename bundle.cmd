#!/usr/bin/env ruby
# frozen_string_literal: true

ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../Gemfile", __dir__)

require "rubygems"

begin
  require "bundler/setup"
rescue LoadError => e
  warn "Bundler is not available: #{e.message}"
  warn "Install Bundler with: gem install bundler"
  exit 1
end

load Gem.bin_path("bundler", "bundle")
