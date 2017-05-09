require "test_helper"

class ApplicationHelperTest < ActionView::TestCase

  include ApplicationHelper

  attr_reader :request

  def test_nav_link
    request.path = root_path

    dashboard_link = nav_link("Dashboard", root_path)
    assert_equal(
      "<a class=\"item active\" title=\"Dashboard\" href=\"/\">Dashboard</a>",
      dashboard_link
    )

    about_us_link = nav_link("About", pages_about_path)
    assert_equal(
      "<a class=\"item\" title=\"About\" href=\"/pages/about\">About</a>",
      about_us_link
    )
  end

end
