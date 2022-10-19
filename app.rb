require_relative 'lib/database_connection'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('recipes')

# Perform a SQL query on the database and get the result set.
sql = 'SELECT id, recipe_name, avr_cooking_time, rating FROM recipe;'
result = DatabaseConnection.exec_params(sql, [])

# Print out each record from the result set .
result.each do |record|
  p "#{record['id']} - #{record['recipe_name']} - #{record['avr_cooking_time']} - #{record['rating']}"
end