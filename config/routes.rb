Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'

  resource :comments do
    get ':id', to: 'comments#show'
    get ':id/like', to: 'comments#like', as: 'like'          # GET ?! Toutes les routes qui écrivent dans la base 
    get ':id/dislike', to: 'comments#dislike', as: 'dislike' # DOIVENT utiliser POST/PUT/DELETE, jamais GET !
  end
end
