Rails.application.routes.draw do
  resources :restaurants, only: %i(index show new create) do
    resources :reviews, only: %i(create) # new enlevé de la parenthèse
  end
  
end
