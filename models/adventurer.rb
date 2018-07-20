class Adventurer
  attr_accessor :name, :title, :class, :level, :status, :adventure, :background
  attr_reader :id
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
