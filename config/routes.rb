Rails.application.routes.draw do
  root 'welcome#index', as: 'root'
  get '/foods', to: 'foods#index'
end
