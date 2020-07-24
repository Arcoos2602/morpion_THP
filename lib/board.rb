require_relative 'board_case.rb'
require 'pry'

class Board
  attr_accessor :cases

  def initialize
    @cases = []
    9.times {|i| @cases[i] = BoardCase.new(i, " ")}
  end

  def play_turn(player)
    puts "ou veux tu jouer #{player.name}?"
    result = gets.chomp
    case result
      when "A1" ; if cases[0].value == " " then cases[0].value = player.symbol end
      when "A2" ; if cases[1].value == " " then cases[1].value = player.symbol end
      when "A3" ; if cases[2].value == " " then cases[2].value = player.symbol end
      when "B1" ; if cases[3].value == " " then cases[3].value = player.symbol end
      when "B2" ; if cases[4].value == " " then cases[4].value = player.symbol end
      when "B3" ; if cases[5].value == " " then cases[5].value = player.symbol end
      when "C1" ; if cases[6].value == " " then cases[6].value = player.symbol end
      when "C2" ; if cases[7].value == " " then cases[7].value = player.symbol end
      when "C3" ; if cases[8].value == " " then cases[8].value = player.symbol end
      else
        puts "INVALID INPUT"
        play_turn(player)
    end
  end

  def compare(i1, i2, i3)
    temp = [@cases[i1].value, @cases[i2].value, @cases[i3].value] 
  end

  def full?
    @cases.count {|i| i.value == 'X' || i.value == 'O'}
  end

  def check_victory?(player)
    tmp = (0..2).map {|c| c = player.symbol}
    return true if compare(0, 1, 2).eql?(tmp)
    return true if compare(3, 4, 5).eql?(tmp)
		return true if compare(6, 7, 8).eql?(tmp)
		return true if compare(0, 3, 6).eql?(tmp)
		return true if compare(1, 4, 7).eql?(tmp)
		return true if compare(2, 5, 8).eql?(tmp)
		return true if compare(0, 4, 8).eql?(tmp)
		return true if compare(2, 4, 6).eql?(tmp)
    return false
  end

  def show_board
    puts "Voici l'état actuel du plateau : "
    puts "   |   |   "
		puts " #{@cases[0].value} | #{@cases[1].value} | #{@cases[2].value} "
		puts "___|___|___"
		puts "   |   |   "
		puts " #{@cases[3].value} | #{@cases[4].value} | #{@cases[5].value} "
		puts "___|___|___"
		puts "   |   |   "
		puts " #{@cases[6].value} | #{@cases[7].value} | #{@cases[8].value} "
		puts "   |   |   "
  end

end
