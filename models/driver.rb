require_relative('../db/sql_runner')
class Driver

  attr_reader :id
  attr_accessor :name, :lorry, :lorry_plate, :current_delivery
  def initialize(option)
    @id = option['id'].to_i
    @name = option['name']
    @lorry = option['lorry']
    @lorry_plate = option['lorry_plate']
    end

  def save()
    sql = "INSERT INTO drivers
    (
      name, lorry, lorry_plate
    )
    VALUES
    (
      $1, $2, $3
    )
    RETURNING id;"
    values = [@name, @lorry, @lorry_plate]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end




end
