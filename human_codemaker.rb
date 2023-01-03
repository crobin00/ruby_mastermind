# frozen_string_literal: true

require_relative 'codemaker'
require_relative 'input'
require_relative 'display'

# Class for human codemaker
class HumanCodemaker < Codemaker
  include Input

  def create_code
    puts Display.choose_code
    self.maker_code = code_input
  end
end
