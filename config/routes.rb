Boekhouding::Application.routes.draw do
  root to: 'home#index'

  resources :facturen, only: [:index, :show, :new, :create]
end
