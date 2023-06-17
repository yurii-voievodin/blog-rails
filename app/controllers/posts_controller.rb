class PostsController < ApplicationController
    def static
        @title = "Ruby on Rails static site generator"
        @markdown_text = File.read("posts/static.md")
        render "posts/markdown"
    end
end
