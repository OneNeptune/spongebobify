# frozen_string_literal: true

require 'thor'
require 'spongebobify'

module Spongebobify
  class CLI < Thor
    desc "spongebobify [TEXT|FILE]", "Converts TEXT or contents of FILE to spongebob case"
    def spongebobify(input = nil)
      if input.nil? && $stdin.tty?
        puts "No input provided. Use 'spongebobify \"some text\"' or 'spongebobify ./path_to_file.txt'"
        exit 1
      end

      if File.exist?(input)
        text = File.read(input)
      else
        text = input
      end

      puts Spongebobify.process(text)
    end

    default_task :spongebobify
  end
end
