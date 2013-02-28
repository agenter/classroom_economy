ClassroomEconomy::Application.routes.draw do

  resources :transactions


  resources :accounts


  resources :memberships


  resources :groups


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end