class UaBlogController < ApplicationController

    def feature
        @title = "Привіт із майбутнього!"
        @markdown_text = File.read("pages/ua/blog/feature.md")
        render "ua/blog/feature"
    end
    
end
