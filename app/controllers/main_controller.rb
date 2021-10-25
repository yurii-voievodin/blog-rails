class MainController < ApplicationController

  #TODO: New categories:
  # Timeline
  # Music
  # Photos
  # Games
  # Books
  # Movies

  def main
    render "main/main"
  end

  def projects
    render "main/projects"
  end

end
