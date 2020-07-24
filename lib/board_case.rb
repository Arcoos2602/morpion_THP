class BoardCase
  attr_accessor :id, :value

  def initialize (id_to_save, value_to_save)
    @id = id_to_save
    @value = value_to_save
  end
end