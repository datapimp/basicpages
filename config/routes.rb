ActionController::Routing::Routes.draw do |map|
  map.resource :account, :controller => "users"
  map.resources :users
  map.resource :user_session
  
  #static urls
  ['about','faq','privacy','terms','contact'].each  do |page|
    map.connect "#{ page }", :controller => "site", :action => page
  end

  map.root :controller => "site", :action => "index"
  
  map.connect "/submissions/:action", :controller => "submissions"
  map.connect "/invaders", :controller => "designers", :action => "index"
  map.connect "/forum", :controller => "forum", :action => "index"
  map.connect "/forum_posts", :controller => "forum_posts", :action => "index"
  map.connect "/blog", :controller => "blog", :action => "index"
  
  map.register '/register/:activation_code', :controller => 'activations', :action => 'new'
  map.activate '/activate/:id', :controller => 'activations', :action => 'create'
  map.login '/login', :controller => "user_sessions", :action => "new"
  map.logout '/logout', :controller => "user_sessions", :action => "destroy"  
  #map.connect '/:controller/:action/:id'
  #map.connect '/:controller/:action/:id.:format'
end

