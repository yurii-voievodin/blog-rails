class UaController < ApplicationController

  def index
    render "ua/index"
  end
    
  def about
    @markdown_text = File.read("pages/about_ua.md")
    render "ua/about"
  end
  
  end
