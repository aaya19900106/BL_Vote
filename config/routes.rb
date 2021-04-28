Rails.application.routes.draw do
  resources :characters do
    resources :ukes, only: [:create, :destroy]
    resources :semes, only: [:create, :destroy]
  end
  root to: 'top#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end