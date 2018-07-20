class Adventurer
  
  attr_reader :id, :name, :title, :class, :level, :status,
  :adventure, :background
  def initialize(option)
    @id = option['id'].to_i
    @name = option['name']
    @title = option['title']
    @class = option['class']
    @level = option['level'].to_i
    @status = option['status']
    @adventure = option['adventure']
    @background = option['background']
  end

end
