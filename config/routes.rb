Rails.application.routes.draw do
  resources :books
  devise_for :users
  mount Vimo::Engine => "/vimo"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
