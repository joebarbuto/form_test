Rails.application.routes.draw do
  

root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/jobs'

  get 'static_pages/living'

  get 'static_pages/fun'

  get '/signup', to: 'users#new'

  resources :users

end
