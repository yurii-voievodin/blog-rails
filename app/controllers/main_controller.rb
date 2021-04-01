class MainController < ApplicationController

  def main
    render "main/main"
  end

  def projects
    @markdown_text = File.read("pages/projects.md")
    render "main/projects"
  end

  def ua
    render "main/ua"
  end

end
