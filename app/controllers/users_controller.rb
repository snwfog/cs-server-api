class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users, status: :ok
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: :created, location: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  private
    def user
      User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :locale,
                                   :email, :password, :salt, :hash_iteration,
                                   :last_login)
    end
end
