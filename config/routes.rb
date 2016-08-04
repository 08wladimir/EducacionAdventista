Rails.application.routes.draw do
  
  get 'welcome/index'
  get 'colegios/micolegio'
  resources :docentes
  resources :colegios
  resources :uni_asos
  
  devise_for :usuarios, controllers: {registrations: "registrations"}
  devise_scope :usuario do
    authenticated :usuario do
      root 'welcome#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  resources :usuarios
end