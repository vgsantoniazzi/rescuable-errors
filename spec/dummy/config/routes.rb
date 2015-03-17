Rails.application.routes.draw do
  root 'users#index'
  get '/unauthenticated', to: 'users#unauthenticated', :constraints => {:format => /json/}
  get '/model', to: 'users#model', :constraints => {:format => /json/}

  delete "*a", to: "users#routing"
  put    "*a", to: "users#routing"
  post   "*a", to: "users#routing"
  get    "*a", to: "users#routing"
end
