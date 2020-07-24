class Application
  #attr_accessor :game
  #board = Board.new
  #player_1 = Player.new
  #player_2 = Player.new(gets.chomp, gets.chomp)
  def perform
    puts "-"*50
    puts "BIENVENUE DANS LE MORPION"
    puts "-"*50
    puts "Veuillez entrer le nom du joueur 1, son symbole sera O"
    print "> "
    name1 = gets.chomp
    puts "Veuillez entrer le nom du joueur 2, son symbole sera X"
    print "> "
    name2 = gets.chomp
    @game = Game.new(name1, name2)
    count = 0
    while @game.turn == true && count <= 9
      @game.turn
      count += 1
      if count == 9 then puts "EGALITE" end
    end
  end
end




# condition de fin @count == 9 et board.check_victory