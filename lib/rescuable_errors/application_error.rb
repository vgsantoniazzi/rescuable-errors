module RescuableErrors
  class ApplicationError < StandardError
    attr_accessor :code, :class, :status
  end
end
