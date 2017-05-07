require "test_helper"

class Superadmin::DesignsControllerTest < ActionController::TestCase

  def setup
    user = create(:user)
    sign_in(user)
  end

  def test_designs_templates_show
    get :templates_show
    assert_response :success
  end

end
