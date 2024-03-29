class PagesController < ApplicationController

    def bootstrap_timeline
        @title = "Bootstrap 5 Timeline"
        @code_example = File.read("posts/timeline_code.md")
        render "pages/bootstrap_timeline"
    end

    def tesla_timeline
        @title = "Tesla Timeline"
        render "pages/tesla_timeline"
    end
end
