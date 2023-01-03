# frozen_string_literal: true

require_relative 'codebreaker'
require_relative 'input'

# Class for human codebreaker
class HumanCodebreaker < Codebreaker
  include Input

  def guess_code
    @guess = input
  end
end
  
