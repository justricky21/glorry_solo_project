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

  def self.all()
    sql = "SELECT * FROM drivers"
    results = SqlRunner.run( sql )
    return results.map { |biting| Driver.new( biting ) }
  end

  def self.find( id )
    sql = "SELECT * FROM drivers
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Driver.new( results.first )
  end

  def update()
    sql = "UPDATE drivers
    SET
    (
      name, lorry, lorry_plate
    ) =
    (
      $1, $2, $3
    )
    WHERE id = $4"
    values = [@name, @lorry, @lorry_plate, @id]
    SqlRunner.run( sql, values )
  end

  def delete()
    sql = "DELETE FROM drivers
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def self.delete(id)
    sql = "DELETE FROM drivers
    WHERE id = $1"
    values = [id]
    SqlRunner.run( sql, values )
  end

  def self.delete_all
    sql = "DELETE FROM drivers"
    SqlRunner.run( sql )
  end

end
