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
  Film.create(params) #inherits from ActiveRecord. params=form input
  redirect_to '/movies'
end

def destroy
  Film.destroy #inherits from ActiveRecord
end

end