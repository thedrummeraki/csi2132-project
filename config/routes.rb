Rails.application.routes.draw do
  devise_for :employees
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#home'

  resources :users, only: [] do
    get :home, on: :collection
  end
end
