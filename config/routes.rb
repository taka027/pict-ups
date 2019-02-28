Rails.application.routes.draw do
  resources :photos
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root "fundamental#index" #トップページ
    get "/sitepolicy", to: "fundamental#sitepolicy" #個人情報の扱い
    get "/about_site", to: "fundamental#about_site" #サイト
    get "/display_photo", to: "fundamental#display_photo" 
    get "/form", to: "fundamental#form" #問い合わせ
    post '/confirm', to: 'fundamental#confirm'#問い合わせ確認画面
    post '/sended', to: 'fundamental#sended'#問い合わせ完了画面
end



