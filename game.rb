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
      puts Display.feedback_clues(feedback)
      puts
      break if feedback.last == 4

      self.turns_played += 1
      break if turns_played > 11
    end
  end
end
