Rails.application.routes.draw do
  root to: 'pages#home'
  get 'start', to: 'pages#start'
end
