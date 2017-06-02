require "test_helper"

class Superadmin::DesignsControllerTest < ActionController::TestCase

  def setup
    user = create(:user)
    sign_in(user)
  end

  def test_designs_templates_index
    get :templates_index
    assert_response :success
  end

  def test_designs_templates_show
    get :templates_show
    assert_response :success
  end

  def test_designs_templates_new
    get :templates_new
    assert_response :success
  end

  def test_designs_templates_dashboard
    get :templates_dashboard
    assert_response :success
  end

  def test_designs_templates_wizard
    get :templates_wizard
    assert_response :success
  end

  def test_designs_templates_settings
    get :templates_settings
    assert_response :success
  end

  def test_designs_templates_components
    get :templates_components
    assert_response :success
  end

end
