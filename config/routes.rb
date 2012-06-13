EmployeeSearch::Application.routes.draw do

  resources :galleries
  resources :photos do
    resources :likes
  end


  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root :to => redirect("employees")

  resources :employees

end
