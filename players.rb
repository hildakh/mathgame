class Player
  attr_accessor :lives, :id

  def initialize(id)
    @lives = 3
    @id = id
  end 
  
  def decrease_live()
    @lives -= 1
  end
  
  def increase_live()
    @lives += 1
  end

end