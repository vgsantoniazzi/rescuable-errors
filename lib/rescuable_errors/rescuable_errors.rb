require_relative '../rescuable_errors/errors/application_error.rb'
require_relative '../rescuable_errors/errors/model_validation_error.rb'
require_relative '../rescuable_errors/errors/unauthenticated_error.rb'
require_relative '../rescuable_errors/errors/routing_error.rb'

module RescuableErrors
  extend ActiveSupport::Concern

  included do
    rescue_from ApplicationError do |e|
      render json: {
        error: {
          code: e.code, class: e.class, message: parse(e.message)
        }
      }, status: e.code
    end

    rescue_from ActionController::RoutingError do |e|
      render json: {
        code: 404, class: ActionController::RoutingError.to_s, message: I18n.t('errors.routing')
      }, status: 404
    end

    def parse(response)
      begin
        return JSON.parse(response)
      rescue JSON::ParserError
        return response
      end
    end
  end
end
