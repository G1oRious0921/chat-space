Rails.application.routes.draw do
  get 'messages/index'

  get 'mesages/index'

  root "messages#index"
end
