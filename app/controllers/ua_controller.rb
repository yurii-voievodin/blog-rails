class UaController < ApplicationController

  def index
    render "ua/index"
  end
    
  def about
    @markdown_text = File.read("pages/ua/about.md")
    render "ua/about"
  end

  def projects
    @markdown_text = File.read("pages/ua/projects.md")
    render "projects"
  end
  
  end
