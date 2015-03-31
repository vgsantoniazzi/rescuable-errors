class UnauthenticatedError < RescuableErrors::ApplicationError
  def initialize
    @code = 401
    @status = 401
    @class = "RescuableErrors::UnauthenticatedError"
    super I18n.t("errors.unauthenticated")
  end
end
