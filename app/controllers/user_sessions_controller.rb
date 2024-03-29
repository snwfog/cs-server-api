class UserSessionsController < ApplicationController
  skip_before_filter :require_login, except: [:destroy]

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to :users, notice: 'Login successful!'
    else
      render nothing: true, status: :internal_server_error
    end
  end

  def destroy
    logout
    redirect_to :users, notice: 'Logged out!'
  end
end
