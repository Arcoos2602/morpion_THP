class Player
  attr_reader :name, :symbol

  def initialize(name_to_save, symbol_to_save)
    @name = name_to_save
    @symbol = symbol_to_save
  end
end