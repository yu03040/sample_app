Rails.application.routes.draw do
  # 指定したパスに GET メソッドでアクセスがあった場合
  # 表示するページを指定する
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  # ルートドメインにアクセスしたとき
  # 表示するページを指定する
  root 'static_pages#home'
  get 'static_pages/contact'
end
