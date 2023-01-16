Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :surveys do
    resources :questions do
      resources :options
    end
    resources :feedbacks do
      resources :responses
    end
  end

  get '/surveys/:id', to: 'surveys#show'
  
  
  

end
