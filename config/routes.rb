Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :resources, :assignments

  resources :tasks do
    resources :milestones, only: [:new, :edit, :destroy, :create]
  end

  root to: "overview#index"
end
