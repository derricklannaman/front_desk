Rails.application.routes.draw do


  get 'communications/index'

  root 'pages#index'
  devise_for :users, :controllers => { :registrations => 'users/registrations'}

  get 'dashboard' => 'pages#dashboard'
  resources :interactive_results, only: :show
  resources :patient_intake_steps
  resources :prescriptions, only: :show
  resources :goals, only: :show
  resources :communications
  get 'patient_profile/:id' => 'patient_profiles#show', as: 'patient_profile'
end
