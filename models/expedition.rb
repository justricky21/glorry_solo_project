require_relative('../db/sql_runner')
class Expedition

  attr_reader :title, :price, :objective, :patron_id, :adventurer_id
  def initialize(option)
    @id = option['id'].to_i
    @adventurer_id = option['adventurer_id'].to_i
    @patron_id = option['patron_id'].to_i
    @title = option['title']
    @price = option['price'].to_i
    @objective = option['objective']
  end

  def save()
    sql = "INSERT INTO expeditions
    (
      adventurer_id, patron_id, title, price, objective
    )
    VALUES
    (
      $1, $2, $3, $4, $5
    )
    RETURNING id;"
    values = [@adventurer_id, @patron_id, @title, @price, @objective]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

end
