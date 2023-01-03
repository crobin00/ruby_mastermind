# frozen_string_literal: true

require_relative 'codebreaker'
require_relative 'formatting'

# Class for computer codebreaker
class ComputerCodebreaker < Codebreaker
  attr_accessor :guess_pool

  def initialize
    super
    @guess_pool = %w[1 2 3 4 5 6].repeated_permutation(4).to_a
  end

  def guess_code(codemaker)
    puts 'Computer guess: '
    guess.clear
    ai_algorithm(codemaker)
  end

  def ai_algorithm(codemaker)
    self.guess = guess_pool.sample
    feedback = codemaker.feedback(guess)
    guess_pool.filter! { |guess| codemaker.feedback(guess).last != feedback.last }
  end
end
