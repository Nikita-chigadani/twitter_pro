class EpicenterController < ApplicationController
  def feed
    @following_tweeets = []

    Tweeet.all.each do | tweeet |
      if current_user.following.include?(tweeet.user_id)
        
        @following_tweeets.push(tweeet)
      end
    end
  end

  def show_user

  end

  def now_following
  end

  def unfollow
  end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
end