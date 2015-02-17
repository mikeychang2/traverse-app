Rails.application.routes.draw do
  get 'welcome/index'

  resources :users

  resources :trips, except: [:new, :edit, :show] do
    resources :events, except: [:edit, :show]
  end


  # get '/trips/:trip_id/event_tags', :to => 'tags#event_tags'
  get '/trips/:trip_id/events_by_tag/:tag_id', :to => 'events#tag'

  get '/trips/:trip_id/tags', :to => 'tags#index'
  post '/events/:event_id/tags', :to => 'tags#create'
  delete '/events/:event_id/tags/:id', :to => 'tags#destroy'

  post '/events/:event_id/places', :to => 'places#create'
  post '/yelp', :to => 'places#yelp'
  delete '/events/:event_id/places/:id', :to => 'places#destroy'

  post '/events/:event_id/photos', :to => 'photos#create'
  delete '/events/:event_id/photos/:id', :to => 'photos#destroy'

  get '/auth' => 'auth#authenticate'
  post '/auth' => 'auth#authenticate'

  get '/facebook' => 'facebook#save_token'
  get '/facebook/photos' => 'facebook#photos'
  get '/facebook/validation' => 'facebook#validation'

  get '/instagram' => 'instagram#oauth_token'
  get '/instagram/response' => 'instagram#oauth_token'
  get '/instagram/photos' => 'instagram#photos'

end
