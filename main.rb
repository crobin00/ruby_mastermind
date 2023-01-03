# frozen_string_literal: true

require_relative 'game'
require_relative 'codemaker'
require_relative 'human_codebreaker'

game = Game.new(Codemaker.new, HumanCodebreaker.new)
game.run
