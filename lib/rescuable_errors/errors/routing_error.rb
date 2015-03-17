class RoutingError < ApplicationError
  def initialize
    @code = 404
    @class = :RoutingError
    super I18n.t('errors.unauthenticated')
  end
end
