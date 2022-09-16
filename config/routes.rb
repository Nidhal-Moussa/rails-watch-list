Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, except: [:index] do
    resources :bookmarks, only: [:new, :create]
  end
  delete '/bookmarks/:id', to: 'bookmarks#destroy', as: :delete_bookmark
  root to: "lists#index"
end
