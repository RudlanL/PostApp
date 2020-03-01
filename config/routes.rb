Rails.application.routes.draw do
  resources :testmouses
  devise_for :users,controllers: {
     registrations: 'users/registrations' 
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do 
    resources :posts, only: [ :edit, :update, :destroy]
  end
  resources :posts, only: [ :index, :show, :new , :create]
  root to: "posts#index"
end
