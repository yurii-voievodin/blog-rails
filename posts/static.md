# Ruby on Rails static site generator

<p class="text-muted">June 17, 2023</p>


How to generate a static website from a Ruby on Rails project. This is how I managed to publish this website 😉
<p class="text-muted">Based on <a href="https://nowaker.net/post/ruby-on-rails-a-static-site-generator.html" target="_blank">this post</a></p>

<br>
## Rakefile

Add a namespace "static" with the two commands "generate" and "server" (`rake static:generate` and `rake static:generate`):

```ruby
namespace :static do
  desc 'Generate static site in ./out/ directory'
  task :generate do
    Dir.mkdir 'out' unless File.exist? 'out'
    Dir.chdir 'out' do
      `wget -mnH http://localhost:3000/`
    end
    `rsync -ruv --exclude=.svn/ public/ out/`
  end

  desc 'Run tiny HTTP server from ./out/ directory'
  task :server do
    Dir.chdir 'out' do
      puts 'Started HTTP server at http://localhost:9000/. Press CTRL+C to exit.'
      `python3 -m http.server 9000`
    end
  end
end
```
<br>
## .gitignore

Add the "out" folder to the .gitignore file:
```
/out/*
```

<br>
## routes.rb

All routes that would be presented on the static website should have a `.html` format, for example:
```ruby
get "rails-static-pages", to: "posts#static", :defaults => { :format => 'html' }
```

Also, all links in the `*.erb` files show have a `.html` in the end, for example:
```erb
<%= link_to "Timeline", "timeline.html" %>
```


<br>
## Ready to generate

Now start a rails server
```console
rails s
``` 

And run this command in a separate tab
```console
rake static:generate
``` 

Test the website with an HTTP server
```console
rake static:server
``` 

<br>
## GitHub Pages
Now you can upload the contents of the "out" folder to GitHub and publish for free on GitHub Pages.
Details and instructions on how to do this can be found here: [pages.github.com](https://pages.github.com/)

