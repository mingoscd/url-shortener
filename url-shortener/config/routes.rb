Rails.application.routes.draw do
  get '/' => 'home#index'
  get '/add_url' => 'url#new_url'
  get '/url/:id' => 'url#go_to'
  get '/most_visited_pages' => 'url#most_visited_pages'
end
