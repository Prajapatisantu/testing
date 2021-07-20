Rails.application.routes.draw do
  get 'questionpapers/new'
  get 'questions/new'
  root 'students#new'
   resources :students 
   resources :teachers
   resources :admins
   resources :questions
   resources :questionpapers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
