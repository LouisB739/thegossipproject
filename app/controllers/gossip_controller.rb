class GossipController < ApplicationController
    def new
    end

    def create
      
       gossip= Gossip.new(title: params['gossip_title'],content:params['gossip_content'], user_id: User.all.sample.id)

       if gossip.save
    	render 'gossip/index', to: 'gossip#index'
       else
    	render 'gossip/new', to: 'gossip#new' 
       end

    end

    def show
       @id=params['id']
        
    end

    def index
       
    end

    def edit
    end

    def update
    end

    def destroy
    end

end
