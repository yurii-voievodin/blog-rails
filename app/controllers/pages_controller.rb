class PagesController < ApplicationController

  def about
  	@markdown_text = File.read("pages/about.md")
    render "pages/about"
  end
  
  def about_ua
    @markdown_text = File.read("pages/about_ua.md")
    render "pages/about_ua"
  end

end
