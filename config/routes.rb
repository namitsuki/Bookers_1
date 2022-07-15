Rails.application.routes.draw do
 
  get 'top' => 'book#top'
  resources :book
end
