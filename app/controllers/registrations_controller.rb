class RegistrationsController < Devise::RegistrationsController

    private

    def sign_up_params
        params.require(:user).permit(:name, :usename, :email, :password_confirmation)
    end

    def acount_update_params
        params.require(:user).permit(:name, :usename, :email, :password_confirmation, :curent_password)
    end

    
end