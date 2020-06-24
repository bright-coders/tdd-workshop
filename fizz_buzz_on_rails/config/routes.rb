Rails.application.routes.draw do
  root to: 'fizz_buzz#index'

  get '/fizz_buzz', to: 'fizz_buzz#index'
  namespace :fizz_buzz do
    get '/list', to: 'list#index'
  end
end
