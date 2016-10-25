Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'static_pages#index'

  get 'about' => 'static_pages#about'

  get 'contact' => 'static_pages#contact'

  resources :posts, only: :show

  get 'tech' => 'posts#tech_index'
  get 'poems' => 'posts#poem_index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
