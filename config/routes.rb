Boekhouding::Application.routes.draw do
  root to: 'home#index'

  get  '/uitgaande_facturen'     => 'uitgaande_facturen#index'
  get  '/uitgaande_facturen/new' => 'uitgaande_facturen#new'
  get  '/uitgaande_facturen/:id' => 'uitgaande_facturen#show'
  post '/uitgaande_facturen'     => 'uitgaande_facturen#create'
end
