require_relative('../db/sql_runner')

class House

attr_reader :house_name, :url

def initialize(options)
@id = options['id'].to_i
@house_name = options['house_name']
@url = options['url']

end

def save()
sql = "INSERT INTO houses
(
  house_name,
url
)
VALUES
(
  $1, $2
)
RETURNING *"
values = [@house_name, @url]
house_data = SqlRunner.run(sql, values)
@id = house_data.first()['id'].to_i
end

def self.all()
  sql = "SELECT * FROM houses"
  houses = SqlRunner.run( sql )
  result = houses.map { |house| House.new( house ) }
  return result
end

def self.find( id )
  sql = "SELECT * FROM houses WHERE id = $1"
  values = [id]
  house = SqlRunner.run( sql, values )
  result = House.new( house.first )
  return result
end

end
