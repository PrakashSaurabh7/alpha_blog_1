Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root "articles#showAll"
  get "showById/:id" => "articles#showById"
  get "new" => "articles#new"
  post "add" => "articles#add"
  get "edit/:id" => "articles#edit"
  patch "update/:id" => "articles#update"
  delete "delete/:id" => "articles#delete"
end
