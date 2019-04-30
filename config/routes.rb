Rails.application.routes.draw do
  devise_for :models
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"

  get "buscar" => "home#buscar"
  get "nosotros" => "home#nosotros"
  get "planes" => "home#planes"
  get "contacto" => "home#contacto"

  devise_scope :user do
    get "/users/sign_out" => "users/sessions#destroy"
  end
end
