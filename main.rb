# frozen_string_literal: true

require_relative 'game'
require_relative 'human_codemaker'
require_relative 'human_codebreaker'
require_relative 'computer_codemaker'
require_relative 'computer_codebreaker'
require_relative 'input'
require_relative 'display'

user_input = ''
puts Display.instructions
puts Display.choose_role
loop do
  user_input = Input.choose_role_input.downcase
  break if user_input.match?('maker') || user_input.match?('breaker')

  puts Display.choose_role_error
end
game = if user_input.match?('maker')
         Game.new(HumanCodemaker.new, ComputerCodebreaker.new)
       else
         Game.new(ComputerCodemaker.new, HumanCodebreaker.new)
       end
game.run
