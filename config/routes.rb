Rails.application.routes.draw do
     # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to:  'homes#new'
    # get '/' => 'homes#new'
    resources :books
end
