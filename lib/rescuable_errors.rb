require_relative './engine.rb'
Dir[File.dirname(__FILE__) + '/rescuable_errors/**/*.rb'].each {|file| require file }

module RescuableErrors
  extend ActiveSupport::Concern

  included do
    rescue_from RescuableErrors::ApplicationError do |e|
      render json: {
        error: {
          code: e.code, class: e.class, message: parse(e.message)
        }
      }, status: e.status
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
