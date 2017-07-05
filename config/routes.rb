Rails.application.routes.draw do
  get 'home/index'

  resources :book_stubs do
    resources :books
  end

  root 'home#index'
end
