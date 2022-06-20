Rails.application.routes.draw do
  
  namespace :admin do
    resources :farmers, only: [:index, :show]
  end
  
  namespace :public do
    get "/" => "home#top"
    resources :order_details, only: [:index, :show]
    resources :orders, only: [:show, :create]
    resources :product_types, only: [:index, :create, :destroy]
    resources :jpears, only: [:index, :new, :create, :show]
    resources :deliveries, only: [:show, :create, :edit, :update]
    resources :customers, only: [:index, :new, :create, :show, :edit, :update, :destroy]
    resources :carts, only: [:show, :update, :create, :destroy]
  end

devise_for :admin,skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}

devise_for :farmers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
end