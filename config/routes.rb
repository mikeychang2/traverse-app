Rails.application.routes.draw do
  get 'welcome/index'

  resources :users

  resources :trips, except: [:new, :edit, :show] do
    resources :events, except: [:edit]
  end


  # get '/trips/:trip_id/event_tags', :to => 'tags#event_tags'
  get '/trips/:trip_id/events_by_tag/:tag_id', :to => 'events#tag'
  get '/trips/:trip_id/events/:event_id/tags', :to => 'events#tags_for_one_event'

  get '/trips/:trip_id/all_events', :to => 'events#all_trip_events'

  get '/trips/:trip_id/tags', :to => 'tags#index'
  post '/events/:event_id/tags', :to => 'tags#create'
  delete '/events/:event_id/tags/:id', :to => 'tags#destroy'

  post '/events/:event_id/places', :to => 'places#create'
  post '/yelp', :to => 'places#yelp'
  delete '/events/:event_id/places/:id', :to => 'places#destroy'

  get '/events/:event_id/photos', :to => 'photos#photos_for_one_event'
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
  get '/instagram/checker' => 'instagram#checker'
  get '/trips/:trip_id/map' => 'trips#map'

  get '/tags/default' => 'tags#default_tags'

end
