Rails.application.routes.draw do
  namespace :public do
    get 'home/top'
  end
  namespace :admin do
    get 'jpear_farmers/index'
    get 'jpear_farmers/show'
  end
  namespace :public do
    get 'order_details/index'
    get 'order_details/show'
  end
  namespace :public do
    get 'carts/index'
  end
  namespace :public do
    get 'orders/new'
  end
  namespace :public do
    get 'product_types/new'
    get 'product_types/show'
    get 'product_types/edit'
  end
  namespace :public do
    get 'jpears/index'
    get 'jpears/new'
    get 'jpears/show'
    get 'jpears/edit'
  end
  namespace :public do
    get 'deliveries/index'
    get 'deliveries/new'
    get 'deliveries/edit'
  end
  namespace :public do
    get 'customers/index'
    get 'customers/new'
    get 'customers/create'
    get 'customers/show'
    get 'customers/edit'
    get 'customers/update'
  end
  # 顧客用
# URL /customers/sign_in ...
devise_for :farmers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin,skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
