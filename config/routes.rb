Rails.application.routes.draw do
  devise_for :employees
  devise_for :customers, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#home'

  get :search, controller: :search, action: :index
  namespace :search do
    get :autocomplete_address_area
    get :results
  end

  namespace :customers do
    get :home
    get :settings

    # All bookings for the current customer
    resources :bookings, except: [:update] do
      delete :archive
    end
    resources :rentings, only: [:index]
  end

  namespace :employees do
    get :home

    # All bookings for employees
    resources :bookings, only: [:index, :destroy] do
      get :check_in
    end
    resources :rentings do
      delete :check_out
      delete :archive
    end
    resources :hotel_chains
    resources :hotels
    resources :rooms
    resources :employees
  end

  resources :hotels

  constraints(:id => /\w+(,\w+)*/) do
    resources :rooms, only: [:show]
  end
end
