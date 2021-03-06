Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'jobs#index'
  namespace :admin do

    resources :jobs do
      member do
        post :hide
        post :publish
      end
      resources :resumes
    end

  end
  resources :jobs do
    resources :resumes
  end
end
