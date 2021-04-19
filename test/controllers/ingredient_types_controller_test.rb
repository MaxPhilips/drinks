require "test_helper"

class IngredientTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ingredient_types_index_url
    assert_response :success
  end
end
