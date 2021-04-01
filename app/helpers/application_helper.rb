module ApplicationHelper

    def meta_tag(tag, text)
        content_for :"meta_#{tag}", text
    end

    def yield_meta_tag(tag, default_text='')
        content_for?(:"meta_#{tag}") ? content_for(:"meta_#{tag}") : default_text
    end

    def is_active(action)       
        params[:action] == action ? "active" : nil        
    end
end
