Rails.application.routes.draw do
  root to: "user_files#index"
  resources :user_files, except: [:edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
