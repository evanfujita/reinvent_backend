class AuthController < ApplicationController
    # skip_before_action :authorized, only: [:create]

    def create
        # byebug
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            render json: user
        else
            render json: { error: 'Invalid username or password' }, status: :unauthorized
        end
    end

    private

    def user_login_params
        params.require(:user).permit(:username, :password)
    end

end
