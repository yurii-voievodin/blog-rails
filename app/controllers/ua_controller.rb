class UaController < ApplicationController

  def index
    @title = "Привіт! Мене звати Юра"

    skills_json = File.read("data/skills.json")
    skills_list = JSON.parse(skills_json)['skills']

    contacts_json = File.read("data/contacts.json")
    contacts_list = JSON.parse(contacts_json)['contacts']

    render "ua/index", locals: { skills_list: skills_list, contacts_list: contacts_list }
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

  def blog
    render "ua/blog/blog"
  end
  
  end
