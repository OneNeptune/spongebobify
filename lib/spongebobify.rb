# frozen_string_literal: true

require 'spongebobify/version'

module Spongebobify
  def self.process(string)
    new_string = string.downcase

    (1...new_string.length).step(2).each do |index|
      next unless new_string[index].ord.between?(97, 122)

      new_string[index] = (new_string[index].ord ^ 32).chr
    end

    new_string
  end
end

class String
  def spongebobify
    Spongebobify.process(self)
  end
end
