require 'json'

class MainController < ApplicationController

  def main
    skills_list = [
      "Git",
      "OOP",
      "Swift",
      "MVC",
      "UIKit",
      "Auto Layout",
      "SwiftUI",
      "Core Data",
      "REST API",
      "TestFlight",
      "In-App Purchase"
    ]
    contacts_list = [
      { link: "https://github.com/yura-voevodin", icon: "bi-github" },
      { link: "https://www.linkedin.com/in/yurivoevodin", icon: "bi-linkedin" },
      { link: "https://t.me/voevodin_yura", icon: "bi-telegram" },
      { link: "https://www.instagram.com/voevodin.yura", icon: "bi-instagram" },
      { link: "https://www.facebook.com/yura.voevodin", icon: "bi-facebook" },
      { link: "https://twitter.com/voevodin_yura", icon: "bi-twitter" }
      
    ]
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
