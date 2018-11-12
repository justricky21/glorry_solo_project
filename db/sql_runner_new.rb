require( 'pg' )

class SqlRunner

  def self.run( sql, values = [] )
    begin
      db = PG.connect({ dbname: 'd2nm3lv4d8crc6',
        host: 'ec2-107-22-164-225.compute-1.amazonaws.com',
        port: '5432',
        user: 'flemvvginxfczi',
        password: '3f722e92b6fbabd29ef904b112d352e09b3006736abec1b7efa235291b15d0d0'})
      db.prepare("query", sql)
      result = db.exec_prepared( "query", values )
    ensure
      db.close() if db != nil
    end
    return result
  end

end
