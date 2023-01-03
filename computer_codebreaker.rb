# frozen_string_literal: true

require_relative 'codebreaker'

# Class for computer codebreaker
class ComputerCodebreaker < Codebreaker

  def guess_code
    puts 'Guess code: '
    self.guess = input
  end
end