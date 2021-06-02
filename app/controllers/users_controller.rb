class UsersController < ApplicationController
    def index
        @users = User.all
      end
     
    def show
        @user = current_user
        @user = User.find(params[:id])
        @friendship = @user.followers.find_by(follower: current_user)
    end
end
