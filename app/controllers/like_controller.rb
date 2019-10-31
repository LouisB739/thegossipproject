class LikeController < ApplicationController

    def new
    end

    def create
        @like = Like.new(gossip_id:params[:gossip_id],user_id:current_user)
    end

    def update 
    end
end
