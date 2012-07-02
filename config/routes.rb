EmployeeSearch::Application.routes.draw do

  mount Mercury::Engine => '/'

  resources :galleries
  resources :employees
  resources :photos do
    resources :likes
  end
  resources :pages do
    resources :likes
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root :to => 'welcome#index'
  resources :welcome, :only => [] do
    member { put :mercury_update }
  end

end
