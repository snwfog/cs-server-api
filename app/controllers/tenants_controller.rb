class TenantsController < ApplicationController
  def index
    @tenants = Tenant.all
    render json: @tenants, status: :ok
  end
end
