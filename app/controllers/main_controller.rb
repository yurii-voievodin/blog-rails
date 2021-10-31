require 'json'

class MainController < ApplicationController

  def main
    render "main/main"
  end

  def projects
    render "main/projects"
  end

  def personal
    photos_json = File.read("data/photos.json")
    @photos = JSON.parse(photos_json)['photos']

    movies_json = File.read("data/movies.json")
    @movies = JSON.parse(movies_json)['movies']

    books_json = File.read("data/books.json")
    @books = JSON.parse(books_json)['books']

    games_json = File.read("data/games.json")
    @games = JSON.parse(games_json)['games']

    render "main/personal"
  end

  def timeline
    render "main/timeline"
  end

end
