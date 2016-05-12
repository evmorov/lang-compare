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

def template_proxy(url, lang1, lang2)
  proxy(url, '/template.html', locals: { lang1: lang1, lang2: lang2 }, ignore: true)
end

lang_list = [
  %w(Ruby CoffeeScript),
  %w(Ruby Java),
  %w(CoffeeScript Ruby),
  %w(CoffeeScript Java),
  %w(Java Ruby),
  %w(Java CoffeeScript)
]
set :lang_list, lang_list
lang_list.each do |lang_pair|
  url = "#{lang_pair[0].downcase}-#{lang_pair[1].downcase}.html"
  template_proxy url, lang_pair[0], lang_pair[1]
end
template_proxy'index.html', 'Ruby', 'CoffeeScript'
