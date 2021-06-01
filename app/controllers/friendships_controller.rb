class FriendshipsController < ApplicationController
    
    def create
        other_user = User.find(params[:user_id])
        @friendship = Friendship.new(follower_id: current_user.id,
                                      followed_id: other_user.id)
                                         
    
        @friendship.save
        redirect_to user_path(other_user)
    end

    def destroy
        @friendship = Friendship.find(params[:id])
        @friendship.destroy
        redirect_to user_path(@friendship.followed_id)
      end

end
