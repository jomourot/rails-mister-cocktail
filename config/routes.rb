Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:create, :index, :new, :show] do
    resources :doses, only: [:create, :new, :destroy]
  end
  # resources :doses, only: [:create, :destroy]

  # resources :cocktails do
  #   resources :doses, only: [:create, :destroy]
  # end
end
