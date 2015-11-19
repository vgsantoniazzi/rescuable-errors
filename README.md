## Welcome to Rescuable Errors

Rescue correctly your application errors.

## Getting Started

From command line:

```
gem install rescuable_errors
```

Gemfile:

```
gem "rescuable_errors"
```

## Usage

You can create errors into gem (if you use a fork) or in your application. For example, create app/errors/routing_error.rb in your application:

```
module RescuableErrors
  class RoutingError < RescuableErrors::ApplicationError
    def initialize
      @code = 404
      @status = 404
      @class = "RescuableErrors::RoutingError"
      super I18n.t("errors.routing")
    end
  end
end

```

and fail in controller with 

```fail RescuableErrors::RoutingError.new```. 

Now will automaticaly render a JSON response with status 404:

```
"error": {
  "code": 404,
  "class": "RescuableErrors::RoutingError",
  "message": "Routing not found."
}
```

## Contributing

I :heart: Open source!

[Follow github guides for forking a project](https://guides.github.com/activities/forking/)

[Follow github guides for contributing open source](https://guides.github.com/activities/contributing-to-open-source/#contributing)

## License

Gem is released under the [MIT license](http://opensource.org/licenses/MIT).
