Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  
  
  # ルーテイングする
  # 左側の'katotestweb1/index'はURLのパスで、左の'katotestweb1#index'はコントローラー名#アクション名というような意味
  get 'katotestweb1/index' => 'katotestweb1#index'
  
end
