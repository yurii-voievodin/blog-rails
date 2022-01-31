require 'json'

class MainController < ApplicationController

  def main
    skills_json = File.read("data/skills.json")
    skills_list = JSON.parse(skills_json)['skills']

    contacts_json = File.read("data/contacts.json")
    contacts_list = JSON.parse(contacts_json)['contacts']

    render "main/main", locals: { skills_list: skills_list, contacts_list: contacts_list }
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
    timeline_json = File.read("data/timeline.json")
    @timeline = JSON.parse(timeline_json)['timeline']

    render "main/timeline"
  end

end
