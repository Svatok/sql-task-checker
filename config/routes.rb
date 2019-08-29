Rails.application.routes.draw do
  root 'query_checks#new'
  resource :query_check, only: %i[new create show]
end
