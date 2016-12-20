require 'rails_helper'

RSpec.feature "Recipe", type: :feature do
  let(:user1) {FactoryGirl.create(:user)}
  let(:recipe) { FactoryGirl.create(:recipe, user: user1) }
  let(:mealplan1) { FactoryGirl.create(:meal_plan, user: user1) }

  describe "Individual Recipe Page" do
    it " shows you a recipe" do
      login(user1)
      recipe

      visit recipe_path(recipe)
      expect(page).to have_content recipe.name
    end

    it " allows you to add the recipe to the current mealplan and then remove it" do
      login(user1)
      recipe

      visit recipe_path(recipe)
      click_button I18n.t('recipes.add_to_mealplan')
      expect(page).to have_content I18n.t('meal_plans.added_recipe')
      expect(user1.current_meal_plan.recipes).to include(recipe)

      click_button I18n.t('recipes.remove_from_mealplan')
      expect(page).to have_content I18n.t('meal_plans.removed_recipe')
      expect(user1.current_meal_plan.recipes).to_not include(recipe)
    end
  end

  describe "New Recipe Form" do
    it " creates a new recipe via the recipe meal_plan web form" do
      login(user1)

      visit dashboard_path
      click_link I18n.t('dashboard.new_recipe')
      fill_in "recipe_name", :with => "My new recipe"
      click_button I18n.t('recipes.submit_new')
      expect(page).to have_selector('.form-errors__list-item')
      fill_in "recipe_time", :with => "30"
      fill_in "recipe_ingredients", :with => "Foo\bbar"
      fill_in "recipe_steps", :with => "blah blah blah"
      click_button I18n.t('recipes.submit_new')
      expect(page).not_to have_selector('.form-errors__list-item')
      expect(page).to have_content I18n.t('recipes.new_saved')
    end
  end

end