Rails.application.routes.draw do

  devise_for :users
  root to: 'posts#index'

  resources :profile, :only => [:show, :follow, :unfollow] do
    member do
      put "follow", to: "profile#follow"
      put "unfollow", to: "profile#unfollow"
    end
  end
  
  mount Commontator::Engine => '/commontator'

  resources :posts


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
