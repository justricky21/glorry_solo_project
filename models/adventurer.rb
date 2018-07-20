require_relative('../db/sql_runner')
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

  def save()
    sql = "INSERT INTO adventurers
    (
      name, title, class, level, status, adventure, background
    )
    VALUES
    (
      $1, $2, $3, $4, $5, $6, $7
    )
    RETURNING id;"
    values = [@name, @title, @class, @level, @status, @adventure, @background]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end


end
