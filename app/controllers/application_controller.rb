class ApplicationController < ActionController::API
  include CanCan::ControllerAdditions

  protected

  def not_found
    render nothing: true, status: :not_found
  end

  def default_serializer_options
    {
        root: false
    }
  end
end
