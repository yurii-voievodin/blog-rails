class PagesController < ApplicationController

  def about
  	@markdown_text = File.read("pages/about.md")
    render "pages/about"
  end

end
