require_relative '../../../../lib/rescuable_errors.rb'

ActionController::Base.class_eval do
  include RescuableErrors
end
