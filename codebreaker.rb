# frozen_string_literal: true

# Class for codebreaker
class Codebreaker
  attr_accessor :guess

  def initialize
    @guess = []
  end

  def display_guess
    guess.each { |guess| print Formatting.pick_color(guess) }
    puts
  end
end
