Rails.application.routes.draw do
  get 'admins/index'
  get 'teachers/index'
  get 'questionpapers/new'
  get 'questions/new'
  root 'students#index'
   resources :students 
   resources :teachers 
   resources :questions
   resources :admins
   resources :questionpapers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
