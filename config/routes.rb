Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # cocktails
  root to: "pages#home"
  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    # nesting doses
    resources :doses, only: [:new, :create, :destroy]
  end
end
