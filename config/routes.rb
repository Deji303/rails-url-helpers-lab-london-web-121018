Rails.application.routes.draw do
  resources :students, only: [:index,:show,:update]

  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
  # get "student/:id", to: "student#show"
  # get '/register', to: 'users#new', as: 'register'



  # get 'students/:id/activate', to: "students#edit", as: 'activate/student'
  get '/students/:id/activate', to: "students#edit", as: 'activate/student'


end
