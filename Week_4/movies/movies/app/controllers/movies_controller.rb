class MoviesController < ApplicationController

  def index
    @films = Film.all  #find all movies in database and store it in @films.
  end

  def search
  end

  def new

  end

  def edit
    @film =Film.find params[:id]
  end

  def show
    @film = Film.find params[:id] #method that finds movie by id
  end

  def create
    movie_to_save = Imdb::Search.new(params[:title]).movies.first

  #Below is how you transfer information from API into database
  # database specific attribtues = API specific methods

    new_movie = Film.new
    new_movie.title = movie_to_save.title
    new_movie.year = movie_to_save.year
    new_movie.plot = movie_to_save.plot
    new_movie.mpaa_rating = movie_to_save.mpaa_rating
    new_movie.user_rating = 50
    new_movie.save

    #.new vs .create
    #new must have a save. create doesn't it all in one step but you have to specify all atrributes.

    redirect_to '/movies'
  end

  def destroy
    Film.destroy #inherits from ActiveRecord
  end

  def update
    movie_to_edit = Film.find(params[:id])

    movie_to_edit.title = params[:title]
    movie_to_edit.year = params[:year]
    movie_to_edit.plot = params[:plot]
    movie_to_edit.mpaa_rating = params[:mpaa_rating]
    movie_to_edit.user_rating = params[:user_rating]
    movie_to_edit.save

    redirect_to '/movies'
  end

end