Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'

   resources :cocktails, only: [:show, :new, :create, :edit, :update] do
    resources :doses, only: [:create]
   end

 resources :doses, only: [:destroy]
end
