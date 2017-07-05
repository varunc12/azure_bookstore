Rails.application.routes.draw do
  get 'home/index'

  resources :books do
    resources :book_stubs
  end

  root 'home#index'
end
