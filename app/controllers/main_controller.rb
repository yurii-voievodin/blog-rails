class MainController < ApplicationController

  def main
    @markdown_text = File.read("pages/about.md")
    render "main/main"
  end

  def projects
    @markdown_text = File.read("pages/projects.md")
    render "main/projects"
  end

end
