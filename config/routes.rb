Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get '/' => 'homes#top'
 get 'books' => 'books#index'
 post 'books'=> 'books#create'
 get 'books' => 'books#edit'
 get  'books/:id' => 'books#index', as: 'book'
 get  'books' => 'books#show'


 end
