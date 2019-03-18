Rails.application.routes.draw do
  devise_for :employees
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#home'

  namespace :customers do
    get :home
  end

  namespace :employees do
    get :home
  end
end
