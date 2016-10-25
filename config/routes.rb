Rails.application.routes.draw do
  get '/' => 'static_pages#index'

  get 'about' => 'static_pages#about'

  get 'contact' => 'static_pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
