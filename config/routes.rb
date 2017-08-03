Rails.application.routes.draw do
  get '/name_game' => 'games#name'
  get '/guess_a_number' => 'games#guess'
  get '/home/:wildcard' => 'games#crazy'
  get '/form_practice' => 'games#practice'
  post '/something' => 'games#other'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
