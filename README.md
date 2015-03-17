# RescuableErrors

Rails Gem que cuida para lançar Erros conhecidos. É baseado em um concern que injeta um código dentro do controller default e a partir dissp é capaz de receber todos os erros ```RescuableErrors```.

# Criação de novos erros

Para criar novos erros é necessario fazer checkout desta gem e adicionar dentro de lib/rescuable_error o erro que deseja baseado nos já existentes, por exemplo:

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

# I18n

Por default, quando a gem é instalada, o locale também é carregado na aplicação, logo para criar uma internacionalização, basta alterar o arquivo dentro de lib/locales.

# Testes

É adicionado um caso de teste dentro de `rescuable_errors_spec.rb`, uma rota no routes.rb apontando para `UsersController`. Esse controller obrigatoriamente lança o erro desejato e a saida do mesmo deve ser validada. Como outros exemplos dentro de `spec/rescuable_errors_spec.rb`

# Classes existentes

## Validação de modelo

```ModelValidationError(@model.errors)```

Classe reponsável por renderizar todos os erros de um model ao criar e/ou atualizar.

## Rotas

```RoutingError.new```

Classe que retorna um json contendo os erros de rota não encontrada

## Autenticação

```UnauthenticatedError.new```

Classe de erro responsável por lançar um erro de usuário não autenticado.
