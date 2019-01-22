Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'page#home'
  get 'about', to: 'page#about'

  resources :articles
   #this one line allows to index, show, edit, patch, update, destroy, create,etc.
end
