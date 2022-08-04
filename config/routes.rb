Rails.application.routes.draw do
  
devise_for :admin,skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}

devise_for :farmers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
root to: "public/home#top"
  
  namespace :admin do
    resources :farmers, only: [:index, :show]
  end
  
  namespace :public do
    resources :order_details, only: [:index, :show]
    resources :orders, only: [:create, :update, :index, :destroy]
    resources :product_types, only: [:index, :create, :destroy]
    resources :jpears, only: [:index, :new, :create, :show, :update, :destroy]
    resources :deliveries, only: [:show, :create, :edit, :update]
    resources :customers, only: [:index, :new, :create, :show, :edit, :update, :destroy]
    resources :carts, only: [:new, :show, :update, :create, :destroy]
    get "/carts/product_type_select" => "carts#product_type_select"
  end

end