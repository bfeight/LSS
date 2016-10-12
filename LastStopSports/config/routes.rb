Rails.application.routes.draw do

  get 'page/nba'

  get 'scrape_nba' => 'application#scrape_nba'

  get 'scrape_nfl' => 'application#scrape_nfl'

  get 'page/nfl'

  get 'page/about'

  resources :users
  root 'application#scrape_nfl'
  get 'users/nba'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
