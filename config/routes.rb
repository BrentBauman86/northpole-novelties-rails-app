Rails.application.routes.draw do
  
root 'welcome#home'

get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'
get '/auth/facebook/callback', to: 'sessions#create'
get 'toys', to: 'toys#popular', as: 'toys'

resources :sessions
  resources :users do 
   collection {post :validate}
  end

resources :categories do 
  resources :toys 
  end  
end

