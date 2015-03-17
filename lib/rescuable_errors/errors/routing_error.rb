module RescuableErrors
  class RoutingError < RescuableErrors::ApplicationError
    def initialize
      @code = 404
      @class = "RescuableErrors::RoutingError"
      super I18n.t("errors.unauthenticated")
    end
  end
end
