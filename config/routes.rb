Rails.application.routes.draw do
  resources :people do 
   resources :awards, only: %i[index]
   resources :credits, only: %i[index]
  end 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
