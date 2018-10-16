require "test_helper"

class UserTest < ActiveSupport::TestCase

  def test_admin_is_indeed_super_admin
    user = users :admin
    assert user.super_admin?
  end

  def test_first_name_is_blank
    user = users :admin
    user.first_name = nil
    assert_equal "Smith", user.name
  end

  def test_last_name_is_blank
    user = users :admin
    user.last_name = nil
    assert_equal "Adam", user.name
  end

  def test_as_json
    user = users :admin

    expected = {
      "email" => "admin@example.com",
      "current_sign_in_at" => nil,
      "last_name" => "Smith",
      "first_name" => "Adam"
    }
    assert_equal expected, user.as_json
  end

  def test_user_does_not_save
    assert_no_difference("User.count") do
      User.create(first_name: "John")
    end
  end

  def test_name
    user = users(:nancy)
    assert_equal "Nancy Smith", user.name
  end

  def test_super_admin
    admin = users(:admin)
    assert_equal "super_admin", admin.role
    assert admin.super_admin?, "User is not a superadmin"
  end

end
