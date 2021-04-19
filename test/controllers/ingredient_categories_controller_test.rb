require "test_helper"

class IngredientCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ingredient_categories_index_url
    assert_response :success
  end
end
