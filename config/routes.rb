Rails.application.routes.draw do
  devise_for :admins
  root to: 'homes#top'
  resources :applications, only: [:index, :create, :show]
  get 'homes/profile' => 'homes#profile'
   namespace :admin do
    resources :applications, only: [:index, :create, :show, :edit, :update, :new]
  end
end
