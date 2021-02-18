Rails.application.routes.draw do
  #cocktails => index / show / new / create
  resources :cocktails, only: [:show, :new, :create]

  root to: 'cocktails#index'
end
