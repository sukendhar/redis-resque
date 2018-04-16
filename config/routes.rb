require 'resque/server'

Rails.application.routes.draw do
  resources :posts
  mount Resque::Server.new, at: "/resque"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
