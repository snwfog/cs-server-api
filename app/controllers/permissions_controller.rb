class PermissionsController < ApplicationController
  def index
    respond_with permission, status: :ok
  end

  private

  def permission
    if params[:role_id]
      Role.find(params[:role_id]).permissions
    else
      Permission.find(params[:id])
    end
  end
end
