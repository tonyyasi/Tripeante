Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  authenticated :user do
    root :to => 'dashboard#index', as: :authenticated_root
  end
  root :to => 'dashboard#welcome'
  get 'new_york' => 'dashboard#ny'
  get 'welcome' => 'dashboard#welcome'
  get 'rome' => 'dashboard#rome'
  get 'paris' => 'dashboard#paris'
  get 'cancun' => 'dashboard#cancun'
  get 'index' => 'dashboard#index'
  get 'hotels' => 'dashboard#hotels'

end
