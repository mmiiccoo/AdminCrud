Rails.application.routes.draw do
  resources :account_teachers
  resources :account_students
  resources :accounts
  get 'home/AdminModule'
  get 'home/AdminModuleStudents'
  get 'home/AdminModuleTeacher'
  
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
