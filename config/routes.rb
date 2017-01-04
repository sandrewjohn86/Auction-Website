Rails.application.routes.draw do
  devise_for :users
  
  resources :products do
  	resources :auctions, only: [:create] do
  		resources :bids, only: [:create]
  	end
  end

  #products_auctions_bids_path(@product, @auction, @bid)  
  root 'products#index'
  
end
