Rails.application.routes.draw do
  resources :plans
  resources :answers
  resources :questions
  resources :items
  resources :questionnaires

  root to: 'static#home'
end
