Rails.application.routes.draw do

  get '/posts', to: 'posts#index', as: 'posts'

  get '/posts/new', to: 'posts#new', as: 'new_post'
  
  # get '/posts/:id', to: 'posts#show'

  # get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  
  post '/posts', to: 'posts#create'

  patch '/posts/:id', to: 'posts#update'

  # delete '/posts/:id', to: 'posts#delete'

  resources :posts,only: [:show, :edit, :delete]
  # resources :posts, only: :show
end
