class ModelValidationError < ApplicationError
  def initialize(errors)
    @code = 400
    @class = :ModelValidationError
    super errors.messages.to_json
  end
end
