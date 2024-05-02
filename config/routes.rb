Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments
  end

  match "/hello_world",
        to: Coach::Handler.new("HelloWorld"),
        via: :get
end
