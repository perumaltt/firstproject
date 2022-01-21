Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do

      post 'create_details',:to=>'checking#create'

      get 'user_details',:to=>'checking#user_details'

      patch 'update_user',:to=>'checking#update_user'

      post 'sign-in',:to=>'checking#sign'

      post 'login',:to=>'checking#login'

      post 'nickname',:to=>'checking#nick_name'

      post 'create/books',:to=>'checking#create_book'

      post 'create/car',:to=>'checking#create_car'

      get 'car_details',:to=>'checking#car_details'

      get 'skill',:to=>'checking#skill'
      

    end
  end
 
  resources :books
  get '/form',:to=>'users#form'

  get '/update',:to=>'users#update'

  get '/show',:to=>'users#show'

  get '/front',:to=>'users#front'

  get '/delete',:to=>'users#delete'

  post '/create',:to=>'users#create'
  






end
