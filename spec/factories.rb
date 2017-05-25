FactoryGirl.define do

  factory :grocery_list do
  end

  factory :ingredient do
    unit "ounces"
    amount 1.5
    name "beef"
  end

  sequence(:name) { |n| "Joe User #{n}"}
  sequence(:email) { |n| "johnhutch+user#{n}@gmail.com"}

  factory :user do
    email
    password 'secret'
    confirmed_at "#{Time.now}"
  end

  sequence(:recipe_name) { |n| "Recipe Name #{n}"}
  sequence(:ingredients) { |n| "1/2 cup butter\n1/4 tsp salt\n1 gram sugar\n3 apples\n1 pound of beef\n3 ounces beef\n1 RecipeIngredient#{n}"}

  factory :recipe do
    name { generate(:recipe_name) }
    ingredients_block { generate(:ingredients) }
    steps "MyText"
    time 1
  end
  # generated via: rails g factory_girl:model Recipe name steps:text time:integer user_id:integer

  sequence(:meal_plan_name) { |n| "Meal Plan Name #{n}"}
  factory :meal_plan do
    name { generate(:meal_plan_name) }
    active 1
  end

end
