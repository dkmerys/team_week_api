Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :businesses do
    collection do
    end
  end
  
  get '/businesses/food' => 'businesses#food'
  get '/businesses/beauty' => 'businesses#beauty'
  get '/businesses/health' => 'businesses#health'
  get '/businesses/clothing' => 'businesses#clothing'
  get '/businesses/design' => 'businesses#design'
  get '/businesses/publishing' => 'businesses#publishing'
  get '/businesses/misc' => 'businesses#misc'
  get '/businesses' => 'businesses#index'
  get '/businesses/:id' => 'businesses#show'

end
