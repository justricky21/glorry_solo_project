require_relative('../db/sql_runner')
class Driver

  attr_reader :id
  attr_accessor :name, :lorry, :lorry_plate, :current_delivery,
  :archived
  def initialize(option)
    @id = option['id'].to_i
    @name = option['name']
    @lorry = option['lorry']
    @lorry_plate = option['lorry_plate']
    @archived = option['archived'] == 't' ? true : false
    end

  def save()
    sql = "INSERT INTO drivers
    (
      name, lorry, lorry_plate, archived
    )
    VALUES
    (
      $1, $2, $3, $4
    )
    RETURNING id;"
    values = [@name, @lorry, @lorry_plate, @archived]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def deliveries
    sql = "SELECT de.* FROM deliveries de WHERE de.driver_id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    return results.map { |delivery| Delivery.new(delivery) }
  end

  def customers
    sql = "SELECT c.* FROM customers c INNER JOIN deliveries de ON
    de.customer_id = c.id WHERE de.driver_id = $1;"
    values = [@id]
    results = SqlRunner.run(sql, values)
    return results.map { |customer| Customer.new(customer) }
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
      name, lorry, lorry_plate, archived
    ) =
    (
      $1, $2, $3, $4
    )
    WHERE id = $5"
    values = [@name, @lorry, @lorry_plate, @archived, @id]
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
