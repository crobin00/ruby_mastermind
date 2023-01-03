# frozen_string_literal: true

require_relative 'display'

# Class for game
class Game
  attr_accessor :codemaker, :codebreaker, :turns_played

  def initialize(codemaker, codebreaker)
    @codemaker = codemaker
    @codebreaker = codebreaker
    @turns_played = 0
  end

  def run
    codemaker.create_code
    loop do
      codebreaker.guess_code
      feedback = codemaker.feedback(codebreaker.guess)
      codebreaker.display_guess
      codemaker.display_clues(feedback)
      if feedback.last == 4
        puts Display.code_broken
        break
      end

      self.turns_played += 1
      puts Display.turns(12 - turns_played), ''
      if turns_played > 11
        puts Display.out_of_turns
        break
      end
    end
  end
end
