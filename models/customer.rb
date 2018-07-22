require_relative('../db/sql_runner')
class Customer

  attr_reader :id
  attr_accessor :contact_name, :company_name, :phone_number, :address, :email
  def initialize(option)
    @id = option['id'].to_i
    @company_name = option['company_name']
    @contact_name = option['contact_name']
    @phone_number = option['phone_number'].to_i
    @address = option['address']
    @email = option['email']
  end

  def save()
    sql = "INSERT INTO customers
    (
      company_name, contact_name, phone_number, address, email
    )
    VALUES
    (
      $1, $2, $3, $4, $5
    )
    RETURNING id;"
    values = [@company_name, @contact_name, @phone_number, @address, @email]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM customers"
    results = SqlRunner.run( sql )
    return results.map { |biting| Customer.new( biting ) }
  end

  def self.find( id )
    sql = "SELECT * FROM customers
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Customer.new( results.first )
  end

  def update()
    sql = "UPDATE customers
    SET
    (
      company_name, contact_name, phone_number, address, email
    ) =
    (
      $1, $2, $3, $4, $5
    )
    WHERE id = $6"
    values = [@company_name, @contact_name, @phone_number, @address, @email, @id]
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

end
