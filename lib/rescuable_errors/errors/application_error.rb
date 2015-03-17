class ApplicationError < StandardError
  attr_accessor :code, :class
end
