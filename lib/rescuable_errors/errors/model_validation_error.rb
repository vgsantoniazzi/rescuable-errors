module RescuableErrors
  class ModelValidationError < RescuableErrors::ApplicationError
    def initialize(errors)
      @code = 400
      @class = "RescuableErrors::ModelValidationError"
      super errors.messages.to_json
    end
  end
end
