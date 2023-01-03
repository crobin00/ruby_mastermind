# frozen_string_literal: true

# Module for user input
module Input
  def code_input
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

  def self.choose_role_input
    user_input = ''
    loop do
      user_input = gets.chomp.downcase
      break if user_input.match?('maker') || user_input.match?('breaker')
    end
    user_input
  end
end
