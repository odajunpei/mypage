Rails.application.routes.draw do
  devise_for :admins
  root to: 'homes#top'

   namespace :admin do
    resources :applications, only: [:index, :create, :show, :edit, :update, :new]
  end
end
