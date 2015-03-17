class UsersController < ApplicationController
  def unauthenticated
    fail RescuableErrors::UnauthenticatedError.new
  end

  def routing
    fail RescuableErrors::RoutingError.new
  end

  def model
    fail RescuableErrors::ModelValidationError.new(Struct.new(:messages).new({:name=>["can't be empty"]}))
  end
end
