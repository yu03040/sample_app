# frozen_string_literal: true

# ウェブアプリケーションの URL 構造とアクションのマッピングを定義する
Rails.application.routes.draw do
  get 'users/new'
  # ルートドメインにアクセスしたとき、表示するページを指定する
  root 'static_pages#home'
  # 指定したパスに GET メソッドでアクセスがあった場合、各アクションを指定する
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get '/signup_path', to: 'users#new'
  resources :users
end
