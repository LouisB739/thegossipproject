class GossipController < ApplicationController
   before_action :authenticate_user, only: [:new,:show]
   before_action :user_is_author, only: [:edit,:destroy,:update]
   
    def new
      @gossip = Gossip.new
      
    end

    def create
      
       @gossip= Gossip.new(title: params['gossip_title'],content:params['gossip_content'], user: User.find_by(id: session[:user_id]))

       if @gossip.save
        flash.now[:success] = "Le gossip a été enregistré"
        render 'gossip/index', to: 'gossip#index'
        
       else
      flash.now[:error] = "Veuillez rentrer un titre (de plus de 3 caractères) et un contenu pour votre potin"
    	render 'gossip/new' 
       end

    end
    

    def show
       @my_gossip = Gossip.find(params[:id])
       @x = @my_gossip
       @my_city = City.find(@my_gossip.user.city_id) 
       @gossip = {id: @my_gossip.id, author: @my_gossip.user.first_name, title: @my_gossip.title, user_id: @my_gossip.user.id, content: @my_gossip.content, created_at: @my_gossip.created_at, city: @my_city.name}
       @gossip_comments = @my_gossip.comments
       @gossip_comment = Comment.new
      
    
    end

    def index
      @gossip= Gossip.all
       
    end

    def edit
      @gossip = Gossip.find(params[:id])
    end

    def update
   
      if @gossip.update(title: params['gossip_title'],content: params['gossip_content'])
         flash[:success] = "Le gossip a été modifié"
         redirect_to @gossip

      else
         flash.now[:error] = "Veuillez rentrer un titre (de plus de 3 caractères) et un contenu pour votre potin"
         render :edit
        
      end
    end

    def destroy
      @gossip.destroy
      flash[:notice] = "Le gossip a été détruit"
      redirect_to gossip_index_url
       end



       def display
         @products = Product.all
       end

       private

       def authenticate_user
         unless current_user
           flash.now[:danger] = "Please log in."
           redirect_to new_session_path
         end
       end

       def user_is_author
         @gossip = Gossip.find(params[:id])
         unless current_user == @gossip.user
            flash.now[:danger] = "Vous ne pouvez modifier que vos potins."
            redirect_to gossip_path(@gossip.id)
         end
      end



end
