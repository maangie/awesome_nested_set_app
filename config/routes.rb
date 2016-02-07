Rails.application.routes.draw do
  root 'categories#show', id: 1
  resources :categories do
    collection do
      get :manage
      post :rebuild
    end
  end

  # For details on the DSL available within this file, see
  # http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
