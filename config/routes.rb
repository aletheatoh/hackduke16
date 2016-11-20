Rails.application.routes.draw do
  root 'users#index'
  resources :homes
  resources :users
  devise_for :users, :controllers => {:sessions => 'devise/sessions', :registrations => 'users/registrations'} do
  # get "/login", :to => "devise/sessions#new", :as => :login
  # get "/signup", :to => "devise/registrations#new", :as => :signup
  # get "/logout", :to => "devise/sessions#destroy", :as => :logout
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
