Rails.application.routes.draw do
  resources :brights
  get 'moon/gotohell'

  get 'moon/die'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
