class UaController < ApplicationController

  def index
    @title = "Привіт! Мене звати Юра"
    render "ua/index"
  end
    
  def about
    @markdown_text = File.read("pages/ua/about.md")
    render "ua/about"
  end

  def projects
    @title = "Юра Воєводін - Мої проєкти"
    @markdown_text = File.read("pages/ua/projects.md")
    render "projects"
  end
  
  end
