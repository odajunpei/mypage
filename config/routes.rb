Rails.application.routes.draw do
  devise_for :admins
  root to: 'applications#index'
  resources :applications, only: [:index, :show]
  resources :inquiries, only: [:new, :create], param: :name
  get 'inquiries/:name/:id' => 'inquiries#show'
  get 'homes/profile' => 'homes#profile'
   namespace :admin do
    resources :applications, only: [:index, :create, :show, :edit, :update, :new, :destroy]
    resources :inquiries, only: [:index, :edit, :update]
  end
end
