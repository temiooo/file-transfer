Rails.application.routes.draw do
  resources :user_files, except: [:edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
