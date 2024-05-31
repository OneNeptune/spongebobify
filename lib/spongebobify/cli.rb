# frozen_string_literal: true

require 'thor'
require 'spongebobify'

module Spongebobify
  class CLI < Thor
    desc "spongebobify TEXT", "Converts TEXT to spongebob case"
    def spongebobify(text = nil)
      if text.nil? && $stdin.tty?
        puts "No input provided. Use 'spongebobify \"some text\"' or 'spongebobify << ./some_file.txt'"
        exit 1
      end

      input = text || $stdin.read
      puts Spongebobify.process(input)
    end

    default_task :spongebobify
  end
end
