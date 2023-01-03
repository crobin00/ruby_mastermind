# frozen_string_literal: true

# Class for codemaker
class Codemaker
  attr_accessor :maker_code

  def initialize
    @maker_code = []
  end

  # Black pegs = compare color at each position for breaker guess and maker code.
  # White pegs:
  #   Calculate amount of each color for breaker guess and maker code
  #   Calculate all pegs by taking the min of the breaker guess color amount
  #   and the breaker guess color amount in the maker code.
  #   Calculate white pegs by subtracting black pegs - (white plus black) pegs
  def feedback(breaker_guess)
    black_pegs_total = calculate_black_pegs(breaker_guess)
    all_pegs = calculate_all_pegs(breaker_guess)
    white_pegs_total = all_pegs - black_pegs_total

    [white_pegs_total, black_pegs_total]
  end

  def display_clues(feedback)
    puts Display.feedback_clues(feedback)
    puts
  end

  private

  def calculate_black_pegs(breaker_guess)
    black_pegs = Hash.new(0)
    breaker_guess.each_with_index do |key, index|
      black_pegs[key] += 1 if breaker_guess[index] == maker_code[index]
    end
    black_pegs_total = 0
    black_pegs.each_value { |value| black_pegs_total += value }
    black_pegs_total
  end

  def calculate_all_pegs(breaker_guess)
    breaker_guess_hash = Hash.new(0)
    breaker_guess.each { |key| breaker_guess_hash[key] += 1 }
    maker_code_hash = Hash.new(0)
    maker_code.each { |key| maker_code_hash[key] += 1 }

    white_plus_black = 0
    maker_code_hash.each_key do |key|
      white_plus_black += [maker_code_hash[key], breaker_guess_hash.fetch(key, 0)].min
    end

    white_plus_black
  end
end
