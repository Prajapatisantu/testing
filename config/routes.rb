Rails.application.routes.draw do
  root 'students#index'
  #get 'teachers/list_paper', to:'teachers#list_paper'
   resources :students 
   resources :teachers do
     resources :questions
   end
   resources :admins do
    resources :questions
   end
   resources :questionpapers
   resources :answers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
