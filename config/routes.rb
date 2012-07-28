Rex::Application.routes.draw do
  resources :dinos

  resources :document_types

  resources :documents do
    member do
      get  'add_dino'
      post 'order_dinos'
    end
  end

  root :to => 'documents#index'
end
