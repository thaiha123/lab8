Rails.application.routes.draw do
  get 'perfect/input'
  get 'perfect/output'
  root 'perfect#input'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
