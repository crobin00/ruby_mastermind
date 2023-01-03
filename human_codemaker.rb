# frozen_string_literal: true

require_relative 'codemaker'
require_relative 'input'

# Class for human codemaker
class HumanCodemaker < Codemaker
  include Input

  def create_code
    puts 'Create codemaker code: '
    self.maker_code = code_input
  end
end
