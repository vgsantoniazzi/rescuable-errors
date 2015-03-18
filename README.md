# RescuableErrors

Rescue correctly your application erros.

# Create new error classes

You can create errors into gem or in your application. Create errors/routing_error.rb in your application:

```
module RescuableErrors
  class RoutingError < RescuableErrors::ApplicationError
    def initialize
      @code = 404
      @class = "RescuableErrors::RoutingError"
      super I18n.t("errors.routing")
    end
  end
end

```

and fail in controller with ```fail RescuableErrors.new```. Now will automaticaly render a JSON response with status 404:
```
"error": {
  "code": 404,
  "class": "RescuableErrors::RoutingError",
  "message": "Routing not found."
}
```

# Tests

In rescuable_errors_spec has some tests. Just copy to your tests. In `spec/dummy` has an application with all detais that how to use this lib
