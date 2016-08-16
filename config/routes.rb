Rails.application.routes.draw do

  root 'pages#index'
  devise_for :users, :controllers => { :registrations => 'users/registrations'}

  resources :patient_intake_steps
  get 'dashboard' => 'pages#dashboard'
  get 'patient_profile/:id' => 'patient_profiles#show', as: 'patient_profile'
end
