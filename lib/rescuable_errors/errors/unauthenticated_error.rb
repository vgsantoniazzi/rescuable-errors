class UnauthenticatedError < ApplicationError
  def initialize
    @code = 401
    @class = :UnauthenticatedError
    super I18n.t('errors.unauthenticated')
  end
end
