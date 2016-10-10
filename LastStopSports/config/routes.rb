Rails.application.routes.draw do

  get 'page/nba'

  get 'page/nfl'

  get 'page/about'

  resources :users
  root 'users#homepage'
  get 'users/nba'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
