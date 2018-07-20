class Expedition
  attr_reader :title, :price, :objective, :patron_id, :adventurer_id
  def initialize(option)
    @adventurer_id = option['adventurer_id'].to_i
    @patron_id = option['patron_id'].to_i
    @title = option['title']
    @price = option['price'].to_i
    @objective = option['objective']
  end

end
