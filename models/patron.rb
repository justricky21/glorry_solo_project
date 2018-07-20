class Patron
  attr_reader :id, :name, :background
  def initialize(option)
    @id = option['id'].to_i
    @name = option['name']
    @background = option['background']
  end

end
