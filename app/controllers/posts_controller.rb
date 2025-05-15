class PostsController < ApplicationController
    def main
        $title = "Yurii Voievodin - Posts"
        render "posts/index"
    end

    def static
        @title = "Ruby on Rails static site generator"
        @markdown_text = File.read("posts/static.md")
        render "posts/markdown"
    end

    def land_rover_photos
        @title = "Land Rover Photos"
        photos_json = File.read("data/photos_land_rover.json")
        @photos = JSON.parse(photos_json)['photos']
        render "posts/land_rover_photos"
    end
end
