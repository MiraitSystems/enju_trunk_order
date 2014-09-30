EnjuTrunkOrder::Engine.routes.draw do
end
Rails.application.routes.draw do

  resources :bookstores do
    resources :order_lists
  end

  resources :manifestations do
    resources :orders
  end

  resources :order_lists do
    resource :order
    resources :purchase_requests
  end

  resources :orders do
    resources :payments
    get :paid, :on => :member
    get :search, :on => :collection
    get :create_subsequent_year_orders, :on => :collection
    get :create_ordered_manifestations, :on => :member
    get :update_order, :on => :member
    post :output_csv, :on => :collection
    resources :payments
    resources :items
  end

  resources :purchase_requests do
    resource :order
  end

  match 'payments/search', :to => 'payments#search'
  resources :payments

  resources :use_licenses
end
