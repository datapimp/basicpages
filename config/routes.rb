ActionController::Routing::Routes.draw do |map|
  ['about','faq','privacy','terms','contact'].each  do |page|
    map.connect "#{ page }", :controller => "site", :action => page
  end

  map.root :controller => "site", :action => "index"
end

