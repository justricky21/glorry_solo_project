require_relative('../db/sql_runner')
class Delivery

  attr_reader :id
  attr_accessor :customer_id, :driver_id, :contents
  def initialize(option)
    @id = option['id'].to_i
    @customer_id = option['customer_id']
    @driver_id = option['driver_id']
    @contents = option['contents']
  end

  def save()
    sql = "INSERT INTO deliveries
    (
      customer_id, driver_id, contents
    )
    VALUES
    (
      $1, $2, $3
    )
    RETURNING id;"
    values = [@customer_id, @driver_id, @contents]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def driver
    sql = "SELECT * FROM drivers
    WHERE id = $1"
    values = [@driver_id]
    results = SqlRunner.run( sql, values )
    return Driver.new( results.first )
  end

  def customer
    sql = "SELECT * FROM customers
    WHERE id = $1"
    values = [@customer_id]
    results = SqlRunner.run( sql, values )
    return Customer.new( results.first )
  end

  def self.all()
    sql = "SELECT * FROM deliveries"
    results = SqlRunner.run( sql )
    return results.map { |biting| Delivery.new( biting ) }
  end

  def self.find( id )
    sql = "SELECT * FROM deliveries
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Delivery.new( results.first )
  end

  def update()
    sql = "UPDATE deliveries
    SET
    (
      customer_id, driver_id, contents
    ) =
    (
      $1, $2, $3
    )
    WHERE id = $4"
    values = [@customer_id, @driver_id, @contents, @id]
    SqlRunner.run( sql, values )
  end

  def delete()
    sql = "DELETE FROM deliveries
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def self.delete(id)
    sql = "DELETE FROM deliveries
    WHERE id = $1"
    values = [id]
    SqlRunner.run( sql, values )
  end

  def self.delete_all
    sql = "DELETE FROM deliveries"
    SqlRunner.run( sql )
  end

end
