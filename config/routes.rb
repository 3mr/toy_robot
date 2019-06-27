Rails.application.routes.draw do
  # root route
  root 'table#surface'

  post 'brain/think', to: 'brain#think'
end
