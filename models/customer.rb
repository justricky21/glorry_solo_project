require_relative('../db/sql_runner')
class Customer

  attr_reader :id, :contact_name, :company_name, :phone_number, :address, :email
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

end
