Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts, only: [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :posts, except: [:show, :index]
  end

end
