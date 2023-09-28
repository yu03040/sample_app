Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  # application_controller.rb の hello アクションを呼び出す
  root "application#hello"
end
