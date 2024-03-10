Rails.application.routes.draw do
  post '/users', to: 'users#create'
  post '/posts', to: 'posts#create'
  get '/posts', to: 'posts#index'
end
put '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
