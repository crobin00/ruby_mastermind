# frozen_string_literal: true

require_relative 'codebreaker'
require_relative 'formatting'

# Class for computer codebreaker
class ComputerCodebreaker < Codebreaker
  def guess_code
    puts 'Computer guess: '
    guess.clear
    4.times { guess.push(rand(1..6).to_s) }
    guess.each { |guess| print Formatting.pick_color(guess) }
    puts
  end
end
