# frozen_string_literal: true

require_relative 'game'
require_relative 'human_codemaker'
require_relative 'human_codebreaker'
require_relative 'computer_codemaker'
require_relative 'computer_codebreaker'

game = Game.new(ComputerCodemaker.new, ComputerCodebreaker.new)
game.run
