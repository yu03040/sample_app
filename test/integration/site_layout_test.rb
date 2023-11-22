# frozen_string_literal: true

require 'test_helper'

# レイアウトに関するテストを実行するために使用されるクラス
class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test 'layout links' do
    get root_path
    assert_template 'static_pages/home' # 特定のテンプレートを使用していることを確認
    assert_select 'a[href=?]', root_path, count: 2 # HTML内で root_path へのリンクが2つ存在するかどうかを検証する
    assert_select 'a[href=?]', help_path
    assert_select 'a[href=?]', about_path
    assert_select 'a[href=?]', contact_path
    get contact_path
    assert_select 'title', full_title('Contact')
  end
end
