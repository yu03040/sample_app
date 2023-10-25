# frozen_string_literal: true

# テストを実行するために必要なライブラリや設定を含む test_helper.rb ファイルを読み込み
require 'test_helper'

# ActionDispatch::IntegrationTestは
# 統合テストの基本クラスであり、 HTTP リクエストをシミュレートしてコントローラーの動作をテストする
class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  # home アクションが正しく動作することを確認
  test 'should get home' do
    get root_path # StaticPagesController の home アクションを呼び出し、その結果をテスト
    assert_response :success # ページが正常にロードされたことを確認
    assert_select 'title', 'Ruby on Rails Tutorial Sample App' # ページのタイトルが指定されたテキストであることを確認
  end

  # help アクションが正しく動作することを確認
  test 'should get help' do
    get help_path
    assert_response :success
  end

  # about アクションが正しく動作することを確認
  test 'should get about' do
    get about_path
    assert_response :success
  end

  # contact アクションが正しく動作することを確認
  test 'should get contact' do
    get contact_path
    assert_response :success
    assert_select 'title', 'Contact | Ruby on Rails Tutorial Sample App'
  end
end
