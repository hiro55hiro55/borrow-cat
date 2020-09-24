Rails.application.routes.draw do

  devise_for :users
    root to:'lends#index'
  resources :lends

end
