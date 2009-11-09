ActionController::Routing::Routes.draw do |map|

  map.resources :items

  map.resources :members

  map.root :controller => :items

  SprocketsApplication.routes(map)

end
