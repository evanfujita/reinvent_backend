class UsersController < ApplicationController
    # skip_before_action :authorized, only: [:create]


    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end
    
    def new
        user = User.new(user_params)
    end

    def create
        user = User.new(user_params)
        
        if user.save
            # token = encode_token(user_id: user.id)
            # render json: { user: UserSerializer.new(user), jwt: token }, status: :created
        render json: user
        else
            render json: user
            render json: { error: 'failed to create user' }, status: :note_acceptable
        end
    end

    def update
        byebug
        user = User.find(params[:id])
        if user.update(user_params)
            render json: user
        else
            render json: { error: 'failed to update'}
        end
    end

    def destroy
        user = User.find_by(id: params[:id])
        user.destroy
        render json: {message: 'deleted'}
    end



    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :restaurant_name, :username, :password, :password_confirmation)
    end

end
