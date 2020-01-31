Rails.application.routes.draw do
  devise_for :users
  resources :slider_images
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homes#index'

  resources :team_members
  resources :services
  resources :projects
  resources :departments
  resources :clients
  resources :dashboards
  resources :abouts

end
