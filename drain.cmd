#!/usr/bin/env ruby
# frozen_string_literal: true

require "fileutils"

root = File.expand_path("..", __dir__)
drain_file = ENV.fetch("DANBOORU_DRAIN_FILE", File.join(root, "tmp", "out_of_rotation"))
action = ARGV.first

case action
when "true"
  FileUtils.mkdir_p(File.dirname(drain_file))
  FileUtils.touch(drain_file)
  puts "drain:true"
when "false"
  FileUtils.rm_f(drain_file)
  puts "drain:false"
else
  state = File.exist?(drain_file)
  warn "Usage: #{File.basename($PROGRAM_NAME)} [true|false]"
  warn "Draining: #{state}"
  exit 1
end
