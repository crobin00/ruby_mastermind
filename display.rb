# frozen_string_literal: true

require_relative 'formatting'

# Module for display
module Display
  def self.instructions
    <<~HEREDOC
    #{Formatting.underline('Welcome to mastermind!')}
    
    Mastermind is a code breaking game between two players.
    One player is the code #{Formatting.underline(Formatting.bold('MAKER'))} while the other is the code #{Formatting.underline(Formatting.bold('BREAKER.'))}

    The code maker chooses a pattern of #{Formatting.underline(Formatting.bold('four'))} of the following colors:
    #{all_colors}

    #{Formatting.underline(Formatting.bold('Example code:'))}
    #{Formatting.pick_color('1')}#{Formatting.pick_color('5')}#{Formatting.pick_color('3')}#{Formatting.pick_color('6')}

    The code breaker will then attempt to guess the code maker's code in #{Formatting.underline(Formatting.bold('under 12 turns.'))}

    After each guess, a clue will be given.
    A ○ indicates the existence of a #{Formatting.underline(Formatting.bold('correct color in a wrong position.'))}
    A ● indecates the existence of a #{Formatting.underline(Formatting.bold('correct color in a correct position.'))}
    Note: These clues appear in no particular order

    #{Formatting.underline(Formatting.bold('Example guess:'))}
    #{Formatting.pick_color('1')}#{Formatting.pick_color('3')}#{Formatting.pick_color('5')}#{Formatting.pick_color('4')}
    Clues: ● ○ ○

    The guess had 1 correct number in the correct position and 2 correct colors in a wrong position.

    HEREDOC
  end

  def self.choose_role
    <<~HEREDOC
    #{Formatting.underline(Formatting.bold('Its time to play!'))}
    Would you like to be the code #{Formatting.italic(Formatting.underline(Formatting.bold('MAKER')))} or code #{Formatting.italic(Formatting.underline(Formatting.bold('BREAKER?')))}
    HEREDOC
  end

  def self.choose_role_error
    <<~HEREDOC
    Invalid Input.
    Please type #{Formatting.italic(Formatting.underline(Formatting.bold('MAKER')))} or #{Formatting.italic(Formatting.underline(Formatting.bold('BREAKER.')))}
    HEREDOC
  end

  def self.choose_code
    <<~HEREDOC
    Enter code from the following colors:
    #{all_colors}
    HEREDOC
  end

  def self.invalid_character
    <<~HEREDOC
    Invalid character.
    #{choose_code}
    HEREDOC
  end

  def self.invalid_length
    <<~HEREDOC
    Invalid length.
    #{choose_code}
    HEREDOC
  end

  def self.all_colors
    "#{Formatting.pick_color('1')}#{Formatting.pick_color('2')}#{Formatting.pick_color('3')}#{Formatting.pick_color('4')}#{Formatting.pick_color('5')}#{Formatting.pick_color('6')}"
  end

end