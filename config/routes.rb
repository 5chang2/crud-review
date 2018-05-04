Rails.application.routes.draw do
  root 'board#index'
  get 'board/show/:id' => "board#show"
  get 'board/new'
  post 'board/create'
  get 'board/destroy/:id' => "board#destroy"
  get 'board/edit/:id' => "board#edit"
  post 'board/update/:id' => "board#update"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
