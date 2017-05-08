require "test_helper"

class LayoutHelperTest < ActionDispatch::IntegrationTest

  test "rendered page contains both base and application layouts" do
    visit("/")
    assert_selector("html>head+body")
    assert_selector("a", "Dashboard")
    assert_match(/Shadowfax/, page.title)
  end

end
\
