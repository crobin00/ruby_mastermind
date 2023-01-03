# frozen_string_literal: true

require_relative 'codemaker'

# Class for computer codemaker
class ComputerCodemaker < Codemaker

  def create_code
    puts 'Computer creating code...'
    4.times { self.maker_code.push(rand(1..6).to_s) }
    puts maker_code
  end
end
