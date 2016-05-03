require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", signup_path
    assert_select "a[href=?]", "http://www.railstutorial.org/"
    assert_select "a[href=?]", "http://rubyonrails.org/"
    assert_select "a[href=?]", "http://news.railstutorial.org/"
    assert_select "a[href=?]", "http://www.michaelhartl.com/"
  end
end
