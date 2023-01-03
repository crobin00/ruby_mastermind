# Mastermind

## Codemaker

- Choose patern of 4 code pegs
- Duplicates allowed, blanks not allowed
- Place pegs depending on codebreaker guess
  (Black peg is correct color and correct position. White peg is correct color but incorrect position.)

## Codebreaker

- Tries to guess pattern
- 12 turns

## Tasks

- Codemaker and codebreaker user input

  - Numbers representing colors
    - Red, green, blue, yellow, pink, aqua
  - Can include spaces (will be removed)
  - Should not be more than 4 numbers
  - Only numbers 1-6 allowed
    <br><br>

- Codebreaker guess feedback
  - See how many numbers match
  - See how many are in the correct position
  - [Helpful Algorithm](https://stackoverflow.com/a/2005930)
