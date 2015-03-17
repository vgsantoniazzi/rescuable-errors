class UsersController < ApplicationController
  def unauthenticated
    fail UnauthenticatedError.new
  end

  def routing
    fail RoutingError.new
  end

  def model
    fail ModelValidationError.new(Struct.new(:messages).new({:name=>["can't be empty"]}))
  end
end
