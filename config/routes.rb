Rails.application.routes.draw do
  root 'backscratchers#index'
  get "/backscratchers", to: "backscratchers#index"
  get "/backscratchers/:id", to: "backscratchers#show"
  post "/backscratchers", to: "backscratchers#create"
  put "/backscratchers/:id", to: "backscratchers#update"
  delete "/backscratchers/:id", to: "backscratchers#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
