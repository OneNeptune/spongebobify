# frozen_string_literal: true

require 'spongebobify/version'
require 'spongebobify/cli'

def is_lowercase(byte)
  byte >= 97 && byte <= 122
end

def is_uppercase(byte)
  byte >= 65 && byte <= 90
end

module Spongebobify
  def self.process(input_string)
    index = 0
    byte_array = []

    input_string.each_byte do |byte|
      if index % 2 == 0
        byte_array << (is_uppercase(byte) ? (byte ^ 32) : byte)
      else
        byte_array << (is_lowercase(byte) ? (byte ^ 32) : byte)
      end
      index += 1
    end

    byte_array.pack('C*')
  end
end

class String
  def spongebobify
    Spongebobify.process(self)
  end
end
