require_relative '../../../../lib/rescuable_errors/engine.rb'
require_relative '../../../../lib/rescuable_errors/rescuable_errors.rb'

ActionController::Base.class_eval do
  include RescuableErrors
end
