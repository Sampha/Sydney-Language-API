Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :dharug_words, only: [:index, :show]
  resources :sources, only: [:index, :show]
end
