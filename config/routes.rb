Rails.application.routes.draw do
   get 'books/list'
   get 'books/new'
   post 'books/create'
   patch 'books/update'
   get 'books/list'
   get 'books/show'
   get 'books/edit'
   get 'books/delete'
   get 'books/update'
   get 'books/show_subjects'
   
   # User APIs
   get 'users/:id', to: 'users#get_one'
   get 'users', to: 'users#list'
   post 'users', to: 'users#create'
   patch 'users', to: 'users#update'
   delete 'users/:id', to: 'users#delete'
end