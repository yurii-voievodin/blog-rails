class UaController < ApplicationController

  def index
    @title = "Привіт! Мене звати Юра"

    contacts_json = File.read("data/contacts.json")
    contacts_list = JSON.parse(contacts_json)['contacts']

    render "ua/index", locals: { contacts_list: contacts_list }
  end

  def projects
    @title = "Юра Воєводін - Власні проєкти"
    render "projects"
  end

  def personal
    photos_json = File.read("data/photos.json")
    @photos = JSON.parse(photos_json)['photos']

    movies_json = File.read("data/ua/movies.json")
    @movies = JSON.parse(movies_json)['movies']

    books_json = File.read("data/ua/books.json")
    @books = JSON.parse(books_json)['books']

    games_json = File.read("data/ua/games.json")
    @games = JSON.parse(games_json)['games']

    render "ua/personal"
  end
  
  end
