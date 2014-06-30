class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  rescue_from ActionController::ParameterMissing, with: :missing_params

  protected

  def not_found_exception
    render nothing: true, status: :not_found
  end

  def missing_params(exception)
    render json: exception, status: :bad_request
  end

  def default_serializer_options
    {
        root: false
    }
  end
end
