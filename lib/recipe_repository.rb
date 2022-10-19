require 'recipe'

class RecipeRepository

    def all
        cook_book = []

        sql = 'SELECT id, recipe_name, avr_cooking_time, rating FROM recipe;'

        result_set = DatabaseConnection.exec_params(sql, [])

        result_set.each do |record|
            recipe = Recipe.new
            recipe.id = record['id']
            recipe.recipe_name = record['recipe_name']
            recipe.avr_cooking_time = record['avr_cooking_time']
            recipe.rating = record['rating']

            cook_book << recipe

        end

        return cook_book

    end

    def find(id)

        cook_book = []

        sql = 'SELECT id, recipe_name, avr_cooking_time, rating FROM recipe WHERE id = $1;'

        params = [id]

        result_set = DatabaseConnection.exec_params(sql, params)

        result_set.each do |record|
            recipe = Recipe.new
            recipe.id = record['id']
            recipe.recipe_name = record['recipe_name']
            recipe.avr_cooking_time = record['avr_cooking_time']
            recipe.rating = record['rating']

            cook_book << recipe

        end

        return cook_book.map { |recipe| recipe.recipe_name }
    end

end