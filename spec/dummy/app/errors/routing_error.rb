class RoutingError < RescuableErrors::ApplicationError
  def initialize
    @code = 404
    @status = 404
    @class = "RescuableErrors::RoutingError"
    super I18n.t("errors.routing")
  end
end
