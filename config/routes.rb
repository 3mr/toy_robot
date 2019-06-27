Rails.application.routes.draw do
  # root route
  root 'table#surface'

  post 'brain/think', to: 'brain#think'
  get 'brain/drop', to: 'brain#drop'
end
