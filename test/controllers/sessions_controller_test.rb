require "test_helper"

class SessionsControllerTest < ActionController::TestCase

  setup do
    request.env["devise.mapping"] = Devise.mappings[:user]
  end

  def test_destroy
    nancy = users :nancy
    sign_in nancy

    delete :destroy
    assert_redirected_to root_path
  end

end
