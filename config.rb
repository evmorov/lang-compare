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

[
  { page: 'index.html', lang1: 'Ruby', lang2: 'CoffeeScript' },
  { page: 'ruby-coffeescript.html', lang1: 'Ruby', lang2: 'CoffeeScript' },
  { page: 'coffeescript-ruby.html', lang1: 'CoffeeScript', lang2: 'Ruby' },
  { page: 'ruby-java.html', lang1: 'Ruby', lang2: 'Java' },
  { page: 'java-ruby.html', lang1: 'Java', lang2: 'Ruby' },
  { page: 'coffeescript-java.html', lang1: 'CoffeeScript', lang2: 'Java' },
  { page: 'java-coffeescript.html', lang1: 'Java', lang2: 'CoffeeScript' }
].each do |language_set|
  proxy(
    language_set[:page],
    '/template.html',
    locals: {
      lang1: language_set[:lang1],
      lang2: language_set[:lang2]
    },
    ignore: true
  )
end
