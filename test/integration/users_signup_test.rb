require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  include Rails.application.routes.url_helpers
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: "", email: "user@invalid", password: "foo", password_confirmation: "bar" } }
    end
    assert_response :unprocessable_entity
    assert_template 'users/new'
    assert_select 'div#（エラー表示部分に含まれるCSSのid名を書いてください）'
    assert_select 'div.（エラー表示部分に含まれるCSSのclass名を書いてください）'
  end
end
