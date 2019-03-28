Rails.application.routes.draw do
  mount_devise_token_auth_for 'Usuario', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :categorias, only: %i[index create]
  resources :empresas, only: %i[index show create update]
  resources :pedidos, only: %i[index create update show destroy]
  resources :produtos, only: %i[index create update show destroy]

  resources :usuarios, only: %i[index show create] do
    post :inativar, action: :inativar
  end
end
