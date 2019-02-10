Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#index', as: 'home'
  get 'contact', to: 'static_pages#contact', as: 'contact'
  get 'team', to: 'static_pages#team', as: 'team'
  get 'login', to: 'static_pages#login', as: 'login'
  get 'welcome/:id', to: 'static_pages#welcome', as: 'welcome'


  resources :users do
    resources :reservations
  end

  resources :users do
    resources :loans 
  end

  resources :events do
    resources :comments
  end
  
  resources :cities, only: [:index, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :books 
  resources :events 
  
end
