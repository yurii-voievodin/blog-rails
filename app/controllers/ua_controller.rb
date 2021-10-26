class UaController < ApplicationController

  def index
    @title = "Привіт! Мене звати Юра"
    render "ua/index"
  end

  def projects
    @title = "Юра Воєводін - Власні проєкти"
    render "projects"
  end
  
  end
