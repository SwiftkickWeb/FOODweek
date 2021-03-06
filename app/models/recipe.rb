class Recipe < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :meal_plans
  has_many :ingredients, :as => :parent

  validates :name, presence: true
  validates :ingredients_block, presence: true
  validates :steps, presence: true
  validates :time, presence: true, numericality: { presence: true, only_integer: true, greater_than: 0 }
  validates :user_id, presence: true

  after_save :parse_ingredient_block

  def ingredients_formatted
    groceries = Array.new
    delimiter = /\s*\n+\s*/ # 0 or more whitespace characters, 1 or more newline character, 0 or more whitespace characters, I think?
    ingredients_lines = self.ingredients_block.split(delimiter)
    groceries.concat(ingredients_lines)
    groceries
  end

  def parse_ingredient_block
    self.ingredients.delete_all
    delimiter = /\s*\n+\s*/ # 0 or more whitespace characters, 1 or more newline character, 0 or more whitespace characters, I think?

    # take the text block of ingredients
    # treat each new line as its own individual ingredienet
    # use ingreedy to parse out the amount, unit, and name and save in
    # an associated ingredient record
    self.ingredients_block.split(delimiter).each do |ingredient|
      ing = Ingredient.new
      ing.ingreedy_parse(ingredient)
      self.ingredients << ing
    end
  end
end
