Rails.application.routes.draw do
  get '/' => 'tickets#index'

  get '/tickets' => 'tickets#tickets'
  post '/tickets/submit' => 'tickets#submit'

  get '/sponsors' => 'sponsors#sponsors'
  post '/sponsors/submit' => 'sponsors#submit'

  get '/sponsors/logo' => 'sponsors#sponsor_logo'
end
