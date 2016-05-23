Rails.application.routes.draw do

  get '/' => 'tickets#index'

  get '/tickets' => 'tickets#tickets'
  post '/tickets/submit' => 'tickets#submit'

  get '/sponsors' => 'sponsors#sponsors'
  post '/sponsors/submit' => 'sponsors#submit'

  get '/admin' => 'admins#show'


  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'


end
