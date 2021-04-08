Rails.application.routes.draw do
  resources :loai_thuocs
  resources :nccs
  resources :sxes
  resources :thuocs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
