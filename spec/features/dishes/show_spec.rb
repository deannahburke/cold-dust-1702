require 'rails_helper'

RSpec.describe 'the dish show page' do
# As a visitor
# When I visit a dish's show page
# I see the dish’s name and description
# And I see a list of ingredients for that dish
# And I see the chef's name
  before(:each)do
    @wolfgang = Chef.create!(name: "Wolfgang Puck")

    @spaghetti = wolfgang.dishes.create!(name: "Spaghetti", description: "Red sauce and meatballs")
    @penne = wolfgang.dishes.create!(name: "Penne", description: "White Sauce and spinach")
    @macaroni = wolfgang.dishes.create!(name: "Macaroni", description: "Four cheese")

    @pasta = Ingredient.create!(name: "Pasta noodles", calories: 300)
    @tomatoes = Ingredient.create!(name: "Tomatoes", calories: 25)
    @meatballs = Ingredient.create!(name: "Meatballs", calories: 456)
    @sauce = Ingredient.create!(name: "Pasta Sauce", calories: 157)
    @cheese = Ingredient.create!(name: "Parmesan", calories: 215)
    @veggies = Ingredient.create!(name: "Vegetable blend", calories: 65)

    DishIngredient.create!(dish: spaghetti, ingredient: pasta)
    DishIngredient.create!(dish: spaghetti, ingredient: tomatoes)
    DishIngredient.create!(dish: penne, ingredient: sauce)
    DishIngredient.create!(dish: penne, ingredient: veggies)
    DishIngredient.create!(dish: macaroni, ingredient: pasta)
    DishIngredient.create!(dish: macaroni, ingredient: cheese)
  end
end
