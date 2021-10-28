class MainController < ApplicationController

  def main
    render "main/main"
  end

  def projects
    render "main/projects"
  end

  def personal
    render "main/personal"
  end

end
