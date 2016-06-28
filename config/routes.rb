Rails.application.routes.draw do
  resources :homeitems
  resources :statics
  resources :feedbacks
  resources :statuses
  resources :carts
  resources :favorite_produks
  resources :subcategories
  resources :categories
  resources :produks
  resources :tokos
  resources :rekenings
  resources :alamats
  resources :pets


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'
  get "/hitungongkir" => "produks#hitungongkir"
  get "/display" => "home#display"
  get "/tentang" => "home#tentang"
  get "/karir" => "home#karir"
  get "/tokos/:id/review" => "tokos#review"
  get "/alamats/new/:provinsi" => "alamats#new"
  get "/alamats/new/:provinsi/:kota" => "alamats#new"
  get "/tokos/new/:provinsi" => "tokos#new"
  get "/tokos/new/:provinsi/:kota" => "tokos#new"
  get "/alamats/edit/:id/:provinsi" => "alamats#edit"
  get "/alamats/edit/:id/:provinsi/:kota" => "alamats#edit"
  get "/tokos/:id/edit/:provinsi" => "tokos#edit"
  get "/tokos/:id/edit/:provinsi/:kota" => "tokos#edit"
  get "/email" => "home#email"
  get "/cari" => "produks#cari"
  get "/checkout" => "carts#checkout"
  get "/konfirmasi-pengiriman/:id/:resi" => "carts#kirim_pesanan"
  get "/pengiriman-sampai/:id" => "carts#pesanan_sampai"
  get "/konfirmasi-transfer/:id" => "carts#konfirmasi"
  get "/terima-pesanan/:id" => "carts#terima_pesanan"
  get "/tolak-pesanan/:id" => "carts#tolak_pesanan"
  get "/diterima" => "carts#diterima"
  get "/konfirmasi-pembayaran" => "home#konfirmasi-pembayaran"
  get "/payment" => "home#payment"
  get "/konfirmasi-pengiriman" => "home#konfirmasi-pengiriman"
  get "/daftar-penjualan" => "home#daftar-penjualan"
  get "/pesanan-baru" => "home#pesanan-baru"
  get "/daftar-transaksi" => "home#daftar-transaksi"
  get "/konfirmasi-penerimaan" => "home#konfirmasi-penerimaan"
  get "/status-pemesanan" => "home#status-pemesanan"
  get "/berhasil" => "home#confirmed"
  get "/bayar" => "home#bayar"
  get "/wishlist" => "home#wishlist"
  get "/profil" => "home#profil"
  get "/finish" => "home#finish"
  get "/masuk" => "home#masuk"
  get "/konfirmasi" => "home#konfirmasi"
  get "/terms" => "home#terms"
  get "/kategori" => "tokos#kategori"
  get "/pengiriman/:id" => "tokos#pengiriman"
  get "/produks/:id/unfav" => "favorite_produks#destroy"
  #get "/editalamat:id", to: "alamats#edit", as: 'alamat'

  #AMDIN#ADMIN#ADMIN
  get 'admin/beadmin/:id' => "admins#becomeadmin"
  get 'admin/deladmin/:id' => "admins#deleteadmin"
  get 'admin/users' => "admins#users"
  get 'admin/homepage' => "admins#homepage"
  get 'admin/homepage/:id' => "admins#homepage"
  get 'admin/stores' => "admins#stores"
  get 'admin/stores/:id' => "admins#stores"
  get 'admin/products' => "admins#products"
  get 'admin/products/:id' => "admins#products"
  get 'admin/categories' => "admins#categories"
  get 'admin/categories/new' => "admins#newcategory"
  get 'admin/categories/:id' => "admins#categories"
  get 'admin/subcategories' => "admins#subcategories"
  get 'admin/subcategories/:id' => "admins#subcategories"
  get 'admin/statics' => "admins#statics"
  get 'admin/statics/:id' => "admins#statics"
  get 'admin' => "admins#dashboard"

  match 'deleteuser/:id' => 'admins#destroyuser', :via => :delete, :as => :admin_destroy_user
  match 'deletestore/:id' => 'admins#destroystore', :via => :delete, :as => :admin_destroy_store
  match 'deleteproduct/:id' => 'admins#destroyproduct', :via => :delete, :as => :admin_destroy_product
  match 'deletecategory/:id' => 'admins#destroycategory', :via => :delete, :as => :admin_destroy_category
  match 'deletesubcategory/:id' => 'admins#destroysubcategory', :via => :delete, :as => :admin_destroy_subcategory
  match 'deletestatic/:id' => 'admins#destroystatic', :via => :delete, :as => :admin_destroy_static



  devise_scope :user do
    get "/daftar" => "devise/registrations#new"
    get "/editprofil" => "user/registrations#edit"
  end


  devise_for :users, controllers: {
  confirmations: "users/confirmations",
  passwords: "users/passwords",
  registrations: "users/registrations",
  sessions: "users/sessions",
  unlocks: "users/unlocks",
  update: "/profil",
  }, :path => '', :path_names => {:sign_in => 'masuk', :sign_out => 'logout'}

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
