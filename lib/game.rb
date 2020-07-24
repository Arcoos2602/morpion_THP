class Game
  attr_accessor :current_player, :status, :board, :players

  def initialize(name1, name2)
    @players = [Player.new(name1, "O"), Player.new(name2, "X")]
    @board = Board.new
    @current_player = players[0]
    @status = 0 # 0 equivaut à en cours
  end

  def turn
    board.show_board
    board.play_turn(@current_player)
    if board.check_victory?(@current_player) == true
      game_end
      return false
    end
    if @current_player == players[0] then @current_player = players[1]
    elsif @current_player == players[1] then @current_player = players[0] end
    return true
  end

  def game_end
    puts "LA PARTIE EST TERMINE"
    puts "#{@current_player.name} a gagné la partie !"
  end    
end