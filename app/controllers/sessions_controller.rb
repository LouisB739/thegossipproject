class SessionsController < ApplicationController
    def new
    end

    def create

        user = User.find_by(email:params['email'])
        if user && user.authenticate(params['password'])
            session[:user_id] = user.id
            render 'gossip/index'

        else
            flash.now[:danger] = 'Invalid email/password combination'
            render 'new'

        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to gossip_index_path
      end



end
