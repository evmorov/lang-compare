set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Turn this on if you want to make your url's prettier, without the .html
activate :directory_indexes

set :relative_links, true

set :site_url, '/'

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

  set :site_url, '/lang-compare'
end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.build_before = true
end

activate :syntax
set :haml, ugly: true

compare_pages = [
  { page: 'ruby-coffeescript.html', lang1: 'Ruby', lang2: 'CoffeeScript' },
  { page: 'ruby-java.html', lang1: 'Ruby', lang2: 'Java' },
  { page: 'coffeescript-ruby.html', lang1: 'CoffeeScript', lang2: 'Ruby' },
  { page: 'coffeescript-java.html', lang1: 'CoffeeScript', lang2: 'Java' },
  { page: 'java-ruby.html', lang1: 'Java', lang2: 'Ruby' },
  { page: 'java-coffeescript.html', lang1: 'Java', lang2: 'CoffeeScript' }
]
index_page = [{ page: 'index.html', lang1: 'Ruby', lang2: 'CoffeeScript' }]
(compare_pages + index_page).each do |compare_page|
  proxy(
    compare_page[:page],
    '/template.html',
    locals: {
      compare_pages: compare_pages,
      current_lang1: compare_page[:lang1],
      current_lang2: compare_page[:lang2]
    },
    ignore: true
  )
end
