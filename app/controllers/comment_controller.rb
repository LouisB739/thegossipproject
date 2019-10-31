
class CommentController < ApplicationController
    def new
        @comment = Comment.new
    end

    def create

         @comment = Comment.new(content: params['content'], gossip_id:params['gossip_id'],user_id:current_user.id)
            if @comment.save
                flash[:success] = "Le commentaire a été enregistré"
                render 'index/new'
            else
                flash[:error] = "Commentaire invalide"
                redirect_to gossip_index_path
            end
     end

    def show
    end

    def index
        @comments = gossip.comments
        @gossip = Gossip.find(params[:gossip_id])
    end

    def edit
    end

    def update
    end

    def destroy
    end
end
