Rails.application.routes.draw do
  # get 'users/edit' => 'users#edit'

  devise_for :users
  resources :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
  	resource :favorites, only: [:create, :destroy]
  	resource :post_comments, only: [:create, :destroy]
  end

  root 'post_images#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Refile.secret_key = '24a182ccdaca6489c330b789f353f63be4156c5eae075951064f0fd37dcdb2e56a4a1e378fb4ab0bb4e9a009ec7479985880a0b471fae431ed8d808d374d442f'
