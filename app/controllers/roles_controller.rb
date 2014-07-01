class RolesController < ApplicationController
  def index
    respond_with Role.all, status: :ok
  end
  
  def show
    respond_with role
  end
  
  private
  def role
    @role = Role.find(params[:id])
  end
end
