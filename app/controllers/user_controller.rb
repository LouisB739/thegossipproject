class UserController < ApplicationController
    def create
        @user= User.new(first_name: params['first_name'],last_name:params['last_name'], description:"grosconooooooooooo",email:params['email'],age:params['age'],city_id:params['city_id'],password:params['password'])

        if @user.save
            log_in(@user)
            render 'gossip/index'

        else
            render 'new'
        end

    end

    def new
    end

    def destroy
    end
end
