require 'recipe_repository'

RSpec.describe RecipeRepository do

    it "returns all the recipes in a nice format" do
        repo = RecipeRepository.new
        result = repo.all
        expect(result.length).to eq 5
    end

    it "returns one particular recipe with the given id" do
        repo = RecipeRepository.new
        result = repo.all
        expect(repo.find(2)).to eq ['Steak']
    end

end