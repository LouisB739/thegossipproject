class GossipController < ApplicationController
    def new
    end

    def create
      
       @gossip= Gossip.new(title: params['gossip_title'],content:params['gossip_content'], user_id: User.all.sample.id)

       if @gossip.save
        flash.now[:success] = "Le gossip a été enregistré"
        render 'gossip/index', to: 'gossip#index'
        
       else
      flash.now[:error] = "Veuillez rentrer un titre (de plus de 3 caractères) et un contenu pour votre potin"
    	render 'gossip/new' 
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
