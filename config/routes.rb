Rails.application.routes.draw do
  resources :topics do
    resources :posts, except: [:index]
  end

  post 'users/confirm' => 'users#confirm'

  resources :users, only: [:new, :create]

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
