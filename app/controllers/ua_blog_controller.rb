class UaBlogController < ApplicationController

    def feature
        @title = "Привіт із майбутнього!"
        @markdown_text = File.read("pages/ua/blog/feature.md")
        render "ua/blog/feature"
    end

    def low_data_mode
       @title = "Як оптимізувати використання мобільного Інтернет"
        render "ua/blog/low-data-mode"
    end
    
end
