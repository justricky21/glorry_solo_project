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

end
