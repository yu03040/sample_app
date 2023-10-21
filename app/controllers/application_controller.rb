# frozen_string_literal: true

# すべてのコントローラの基底クラス
class ApplicationController < ActionController::Base
  def hello
    # 文字列をブラウザで読み込んで表示する
    render html: 'hello, world!'
  end
end
