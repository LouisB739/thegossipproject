Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 resources:gossip ,as: :gossip, path: "gossip"
 
 resources:team
 
 resources:author
 
 resources:contact


end
