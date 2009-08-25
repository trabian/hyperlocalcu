ActionController::Routing::Routes.draw do |map|

  map.resources :items

  map.root :controller => :items

  SprocketsApplication.routes(map)

end
