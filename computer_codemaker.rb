# frozen_string_literal: true

require_relative 'codemaker'
require_relative 'display'

# Class for computer codemaker
class ComputerCodemaker < Codemaker
  def create_code
    puts Display.computer_code
    4.times { maker_code.push(rand(1..6).to_s) }
    puts maker_code
  end
end
