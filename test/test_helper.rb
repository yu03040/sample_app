# frozen_string_literal: true

# 環境変数 RAILS_ENV が設定されていない場合に、デフォルトでテスト環境を使用するように設定
ENV['RAILS_ENV'] ||= 'test'

# Rails アプリケーションの設定と環境を読み込み
# このファイルは Rails アプリケーションの起動に必要であり、
# テスト環境を正しくセットアップするために使用する
require_relative '../config/environment'

# Rails のテストフレームワークで提供されるテストユーティリティを読み込み
# テストの実行やテスト用データベースのセットアップなど、テストに必要な機能が利用できる
require 'rails/test_help'

# Minitestのレポーターを読み込み
# レポーターはテスト結果の表示方法をカスタマイズするために使用される
require 'minitest/reporters'

# Minitestのレポーターをアクティブにする
# これにより、テスト結果がより読みやすく表示される
Minitest::Reporters.use!

# テストケースの基本クラス
# Railsのテストスイートのテストケースを定義するために使用される
module ActiveSupport
  class TestCase
    # 指定のワーカー数でテストを並列実行する
    parallelize(workers: :number_of_processors)

    # test/fixtures/*.ymlにあるすべてのfixtureをセットアップする
    # fixture はテストデータベースに事前にセットアップされたデータで
    # テストケースで使用される
    fixtures :all
    include ApplicationHelper

    # （すべてのテストで使うその他のヘルパーメソッドは省略）
  end
end
