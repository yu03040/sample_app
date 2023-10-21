# frozen_string_literal: true

# テストを実行するために必要なライブラリや設定を含む test_helper.rb ファイルを読み込み
require 'test_helper'

# ActionDispatch::IntegrationTestは
# 統合テストの基本クラスであり、 HTTP リクエストをシミュレートしてコントローラーの動作をテストする
class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  # 各テストメソッドが実行される前に実行されるメソッド
  # テスト内で使用する共通の変数や設定を初期化
  def setup
    # インスタンス変数
    @base_title = 'Ruby on Rails Tutorial Sample App'
  end

  test 'should get root' do
    get root_url
    assert_response :success
  end

  # home アクションが正しく動作することを確認
  test 'should get home' do
    get static_pages_home_url # StaticPagesController の home アクションを呼び出し、その結果をテスト
    assert_response :success # ページが正常にロードされたことを確認
    assert_select 'title', 'Ruby on Rails Tutorial Sample App' # ページのタイトルが指定されたテキストであることを確認
  end

  # help アクションが正しく動作することを確認
  test 'should get help' do
    get static_pages_help_url
    assert_response :success
  end

  # about アクションが正しく動作することを確認
  test 'should get about' do
    get static_pages_about_url
    assert_response :success
  end

  # contact アクションが正しく動作することを確認
  test 'should get contact' do
    get static_pages_contact_url
    assert_response :success
    assert_select 'title', 'Contact | Ruby on Rails Tutorial Sample App'
  end
end
