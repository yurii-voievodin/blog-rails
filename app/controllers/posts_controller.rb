class PostsController < ApplicationController
    def main
        $title = "Yura Voevodin - Posts"
        render "posts/index"
    end

    def static
        @title = "Ruby on Rails static site generator"
        @markdown_text = File.read("posts/static.md")
        render "posts/markdown"
    end
end
