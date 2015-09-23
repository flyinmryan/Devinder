Rails.application.routes.draw do

  root 'homes#index'

  get 'home' => 'homes#index'

  post 'users/login' => 'users#login'
  get 'users/logout' => 'users#logout'
  get 'users/errors' => 'users#new'

  get 'homes/about' => 'homes#show'
  get 'homes/team' => 'homes#team'
  get 'homes/careers' => 'homes#careers'
  get 'homes/privacy' => 'homes#privacy'
  get 'homes/faq' => 'homes#faq'
  get 'homes/terms' => 'homes#terms'

  resources :projects do
    member do
      get 'contributors'
    end
  end

  resources :users do
    member do
      get 'offers'
    end
  end

  post 'project_details/:id/offer' => 'project_details#offer'
  patch 'project_details/:id/offer' => 'project_details#accept_offer'
  delete 'project_details/:id/offer' => 'project_details#reject_offer'
  post 'project_details/:id/contribute' => 'project_details#contribute'
  patch 'project_details/:id/contribute' => 'project_details#accept_contributor'
  delete 'project_details/:id/contribute' => 'project_details#reject_contributor'

end
