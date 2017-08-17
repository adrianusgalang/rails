Rails.application.routes.draw do
  get 'home/index'
  get 'about/index'
  resources :kosan

  root 'home#index'
end
