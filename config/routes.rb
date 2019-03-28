Rails.application.routes.draw do
  devise_for :employees
  devise_for :customers, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#home'

  get :search, controller: :search, action: :index
  namespace :search do
    get :results
  end

  namespace :customers do
    get :home
  end

  namespace :employees do
    get :home
  end
end
