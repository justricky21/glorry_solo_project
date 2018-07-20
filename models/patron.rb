require_relative('../db/sql_runner')
class Patron

  attr_reader :id, :name, :background
  def initialize(option)
    @id = option['id'].to_i
    @name = option['name']
    @background = option['background']
  end

  def save()
    sql = "INSERT INTO patrons
    (
      name, background
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id;"
    values = [@name, @background]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

end
