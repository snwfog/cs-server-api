class ApplicationController < ActionController::Base
  respond_to :json

  rescue_from ActiveRecord::RecordNotFound, with: :not_found_exception
  rescue_from ActionController::ParameterMissing, with: :missing_params_exception

  protected

  def not_found_exception
    render nothing: true, status: :not_found
  end

  def missing_params_exception(exception)
    render json: exception, status: :bad_request
  end

  def default_serializer_options
    {
        root: false
    }
  end
end
