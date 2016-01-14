set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Turn this on if you want to make your url's prettier, without the .html
activate :directory_indexes

configure :build do
  # Any files you want to ignore:
  # ignore '/admin/*'

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  activate :relative_assets
end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.build_before = true
end

activate :syntax
set :haml, ugly: true

languages = ['Ruby', 'CoffeeScript', 'JavaScript']
languages.each do |left|
  (languages - [left]).each do |right|
    proxy(
      "#{left.downcase}-#{right.downcase}.html",
      '/template.html',
      locals: {
        left: left,
        right: right,
        languages: languages
      }
    )
  end
end
proxy 'index.html', '/template.html', locals: {
  left: 'Ruby',
  right: 'CoffeeScript',
  languages: languages
}
