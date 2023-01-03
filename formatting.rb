# frozen_string_literal: true

# Module for formatting
module Formatting
  def self.pick_color(string)
    case string
    when '1'
      bg_red(string)
    when '2'
      bg_green(string)
    when '3'
      bg_blue(string)
    when '4'
      bg_yellow(string)
    when '5'
      bg_pink(string)
    when '6'
      bg_gray(string)
    end
  end

  def self.bg_red(string)
    "\e[41m  #{string}  \e[0m "
  end

  def self.bg_green(string)
    "\e[42m  #{string}  \e[0m "
  end

  def self.bg_blue(string)
    "\e[44m  #{string}  \e[0m "
  end

  def self.bg_yellow(string)
    "\e[103m  #{string}  \e[0m "
  end

  def self.bg_pink(string)
    "\e[106m  #{string}  \e[0m "
  end

  def self.bg_gray(string)
    "\e[100m  #{string}  \e[0m "
  end

  def self.bold(string)
    "\e[1m#{string}\e[22m"
  end

  def self.underline(string)
    "\e[4m#{string}\e[24m"
  end

  def self.italic(string)
    "\e[3m#{string}\e[23m"
  end
end