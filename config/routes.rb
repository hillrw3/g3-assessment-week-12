Rails.application.routes.draw do
  root "cages#index"
  resources :cages

end
