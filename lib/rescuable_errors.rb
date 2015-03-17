require_relative './engine.rb'
require_relative '../lib/rescuable_errors/application_error.rb'
require_relative '../lib/rescuable_errors/model_validation_error.rb'
require_relative '../lib/rescuable_errors/unauthenticated_error.rb'
require_relative '../lib/rescuable_errors/routing_error.rb'

module RescuableErrors
  extend ActiveSupport::Concern

  included do
    rescue_from RescuableErrors::ApplicationError do |e|
      render json: {
        error: {
          code: e.code, class: e.class, message: parse(e.message)
        }
      }, status: e.code
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
