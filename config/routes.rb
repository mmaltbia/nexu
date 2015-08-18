Rails.application.routes.draw do
  
  # get 'matches/show'

  # get 'matches/edit'

  # get 'swipes/index'

  root 'pages#index'

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  resources :users
  get '/profile', to: 'users#show' 
  get '/signup', to: 'sessions#new', as: :signup #Actual Splash Page

  # get '/profile', to: 'users#show', as: :profile
  get '/my-matches', to: 'matches#edit'


end


#       Prefix Verb     URI Pattern                        Controller#Action
#         root GET      /                                  pages#index
#              GET|POST /auth/:provider/callback(.:format) sessions#create
# auth_failure GET|POST /auth/failure(.:format)            redirect(301, /)
#      signout GET|POST /signout(.:format)                 sessions#destroy
#        users GET      /users(.:format)                   users#index
#              POST     /users(.:format)                   users#create
#     new_user GET      /users/new(.:format)               users#new
#    edit_user GET      /users/:id/edit(.:format)          users#edit
#         user GET      /users/:id(.:format)               users#show
#              PATCH    /users/:id(.:format)               users#update
#              PUT      /users/:id(.:format)               users#update
#              DELETE   /users/:id(.:format)               users#destroy
#      profile GET      /profile(.:format)                 users#show
#       signup GET      /signup(.:format)                  sessions#new
#   my_matches GET      /my-matches(.:format)              matches#edit







