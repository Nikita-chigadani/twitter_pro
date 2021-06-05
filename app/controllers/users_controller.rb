class UsersController < ApplicationController
    def index
        users = User.all
        respond_to do |format|
            format.html { render :index, locals: { users: users } }
          end
        
    end
     
    def show
        @user = current_user
        @user = User.find(params[:id])
        @friendship = @user.followers.find_by(follower: current_user)
    end
end
