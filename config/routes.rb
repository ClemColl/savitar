Rails.application.routes.draw do
  resources :plans
  resources :answers
  resources :questions
  resources :items

  get '/liste_question' => 'static#liste_question'

  root to: 'static#home'
end
