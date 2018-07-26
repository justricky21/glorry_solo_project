require_relative('../db/sql_runner')
class Customer

  attr_reader :id
  attr_accessor :contact_name, :company_name, :phone_number, :address, :email,
  :archived
  def initialize(option)
    @id = option['id'].to_i
    @company_name = option['company_name']
    @contact_name = option['contact_name']
    @phone_number = option['phone_number'].to_i
    @address = option['address']
    @email = option['email']
    @archived = option['archived'] == 't' ? true : false
  end

  def save()
    @company_name = "Missing name" if @company_name == ""
    @contact_name = "Missing name" if @contact_name == ""
    @address = "Missing address" if @address == ""
    sql = "INSERT INTO customers
    (
      company_name, contact_name, phone_number, address, email, archived
    )
    VALUES
    (
      $1, $2, $3, $4, $5, $6
    )
    RETURNING id;"
    values = [@company_name, @contact_name, @phone_number, @address, @email,
    @archived]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def deliveries
    sql = "SELECT de.* FROM deliveries de WHERE de.customer_id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    return results.map { |delivery| Delivery.new(delivery) }
  end

  def drivers
    sql = "SELECT c.* FROM customers c INNER JOIN deliveries de ON
    de.customer_id = c.id WHERE de.driver_id = $1;"
    values = [@id]
    results = SqlRunner.run(sql, values)
    return results.map { |driver| Driver.new(driver) }
  end

  def self.all_but_archived
    sql = "SELECT * FROM customers WHERE archived = false"
    results = SqlRunner.run( sql )
    return results.map { |customer| Customer.new( customer ) }
  end

  def self.all()
    sql = "SELECT * FROM customers"
    results = SqlRunner.run( sql )
    return results.map { |customer| Customer.new( customer ) }
  end

  def self.find( id )
    sql = "SELECT * FROM customers
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Customer.new( results.first )
  end

  def update()
    @company_name = "Missing name" if @company_name == ""
    @contact_name = "Missing name" if @contact_name == ""
    @address = "Missing address" if @address == ""
    sql = "UPDATE customers
    SET
    (
      company_name, contact_name, phone_number, address, email, archived
    ) =
    (
      $1, $2, $3, $4, $5, $6
    )
    WHERE id = $7"
    values = [@company_name, @contact_name, @phone_number, @address, @email,
    @archived, @id]
    SqlRunner.run( sql, values )
  end

  def delete()
    sql = "DELETE FROM customers
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def self.delete(id)
    sql = "DELETE FROM customers
    WHERE id = $1"
    values = [id]
    SqlRunner.run( sql, values )
  end

  def self.delete_all
    sql = "DELETE FROM customers"
    SqlRunner.run( sql )
  end

  def is_archived
    if @archived
      return 'This costumer no longer has dealings with us'
    end
  end

end
