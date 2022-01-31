Rails.application.routes.draw do
  devise_for :admins
  root to: 'applications#index'
  resources :applications, only: [:index, :show]
  get 'homes/profile' => 'homes#profile'
   namespace :admin do
    resources :applications, only: [:index, :create, :show, :edit, :update, :new]
  end
end
