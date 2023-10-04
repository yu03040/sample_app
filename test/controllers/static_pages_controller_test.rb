# テストを実行するために必要なライブラリや設定を含む test_helper.rb ファイルを読み込み
require "test_helper"

# ActionDispatch::IntegrationTestは
# 統合テストの基本クラスであり、 HTTP リクエストをシミュレートしてコントローラーの動作をテストする
class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  # 各テストメソッドが実行される前に実行されるメソッド
  # テスト内で使用する共通の変数や設定を初期化
  def setup
    # インスタンス変数
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  # home アクションが正しく動作することを確認
  test "should get home" do
    get static_pages_home_url # StaticPagesController の home アクションを呼び出し、その結果をテスト
    assert_response :success # ページが正常にロードされたことを確認
    assert_select "title", "Home | #{@base_title}" # ページのタイトルが正しいことを確認
  end

  # help アクションが正しく動作することを確認
  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  # about アクションが正しく動作することを確認
  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  # contact アクションが正しく動作することを確認
  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
end
