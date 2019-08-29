Rails.application.routes.draw do
  resource :query_check, only: %i[new create show]
end
