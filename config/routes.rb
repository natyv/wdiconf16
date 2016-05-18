Rails.application.routes.draw do
  get '/' => 'tickets#index'

  get '/tickets' => 'tickets#tickets'

  get '/sponsors' => 'sponsors#sponsors'

end
