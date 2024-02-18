Rails.application.routes.draw do
  root 'posts#index'
  get 'posts/:id/view_count', to: 'posts#view_count', as: 'view_count'
  resources :posts, except: :index
end
