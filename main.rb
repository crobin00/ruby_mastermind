# frozen_string_literal: true

def input
  user_input = ''
  user_input_arr = []
  loop do
    user_input = gets.chomp
    user_input_arr = user_input.delete(' ').chars
    if user_input_arr.length != 4
      puts 'Incorrect input length'
      next
    end
    if user_input_arr.any? { |char| char.to_i < 1 || char.to_i > 6 }
      puts 'Invalid character'
      next
    end
    break
  end
  user_input_arr
end

def calculate_black_pegs(maker_code, breaker_guess)
  black_pegs = Hash.new(0)
  maker_code.each_with_index do |key, index|
    black_pegs[key] += 1 if maker_code[index] == breaker_guess[index]
  end
  black_pegs_total = 0
  black_pegs.each_value { |value| black_pegs_total += value }
  black_pegs_total
end

def calculate_all_pegs(maker_code, breaker_guess)
  maker_code_hash = Hash.new(0)
  maker_code.each { |key| maker_code_hash[key] += 1 }
  breaker_guess_hash = Hash.new(0)
  breaker_guess.each { |key| breaker_guess_hash[key] += 1 }

  white_plus_black = 0
  breaker_guess_hash.each_key do |key|
    white_plus_black += [breaker_guess_hash[key], maker_code_hash.fetch(key, 0)].min
  end

  white_plus_black
end

# Black pegs = compare color at each position for breaker guess and maker code.
# White pegs:
#   Calculate amount of each color for breaker guess and maker code
#   Calculate all pegs by taking the min of the breaker guess color amount
#   and the breaker guess color amount in the maker code.
#   Calculate white pegs by subtracting black pegs - (white plus black) pegs
def guess_feedback(maker_code)
  breaker_guess = input
  black_pegs_total = calculate_black_pegs(maker_code, breaker_guess)
  all_pegs = calculate_all_pegs(maker_code, breaker_guess)
  white_pegs_total = all_pegs - black_pegs_total

  [white_pegs_total, black_pegs_total]
end

p guess_feedback %w[1 2 3 4]
