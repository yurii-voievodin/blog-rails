class MainController < ApplicationController

  def main
    render "main/main"
  end

  def contact
    render "main/contact"
  end

  def projects
    render "main/projects"
  end

  def ua
    render "main/ua"
  end

end
