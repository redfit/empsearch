EmployeeSearch::Application.routes.draw do

  resources :galleries
  resources :photos

  devise_for :users

  root :to => redirect("employees")

  resources :employees

end
