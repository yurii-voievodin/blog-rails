class UaController < ApplicationController

  def index
    @title = "Привіт! Мене звати Юра"
    @markdown_text = File.read("pages/ua/about.md")
    render "ua/index"
  end

  def projects
    @title = "Юра Воєводін - Власні проєкти"
    @markdown_text = File.read("pages/ua/projects.md")
    render "projects"
  end
  
  end
