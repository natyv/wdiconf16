Rails.application.routes.draw do
  get '/' => 'tickets#index'

  get '/tickets' => 'tickets#tickets'
  post '/tickets/submit' => 'tickets#submit'

  get '/sponsors' => 'sponsors#sponsors'

end
