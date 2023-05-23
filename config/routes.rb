Rails.application.routes.draw do
  get 'documentary_film/index'
  get 'documentary_film/new'
  get 'serie/index'
  get 'serie/new'
  get 'movies/index'
  get 'movies/new'
 
  post "documentary_film",                          to: "documentary_films#create"
  post "serie",                                     to: "series#create"
  post "movie",                                     to: "movies#create"


  root "movies#index"
end
