Rails.application.routes.draw do
  resources :topics
  resources :rsvps
  resources :events
  resources :past_events
  resources :group_members
  resources :schedules
  resources :locations
  resources :topickeywords
  resources :groups
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :tests

  root 'admin#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
