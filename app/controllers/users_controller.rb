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

  def show
    if user
      render json: user, status: :ok
    else
      render nothing: true, status: :not_found
    end
  end

  def activate
    if @user = User.load_from_activation_token(params[:id])
      @user.activate!
      logger.warn("#{@user} was successfully activated!") if @user.activated?
    end

    redirect_to users_path
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
