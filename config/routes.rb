Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'static_pages#about'

  get 'about' => 'static_pages#about'
  get 'hire_me' => 'static_pages#hire_me'
  get 'talks' => 'static_pages#talks'

  get 'contact' => 'static_pages#contact'

  get 'tech' => 'posts#tech_index'
  get 'poetry' => 'posts#poetry_index'
  get 'poetry/:id' => 'posts#poem'
  get 'tech/:id' => 'posts#tech'

  resources :events, only: [:index]
end
