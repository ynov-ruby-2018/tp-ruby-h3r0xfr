Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'

  resource :comments do
    get ':id', to: 'comments#show'
    get ':id/like', to: 'comments#like', as: 'like'
    get ':id/dislike', to: 'comments#dislike', as: 'dislike'
  end
end