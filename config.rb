activate :directory_indexes
activate :sprockets
activate :syntax
set :relative_links, true
set :haml, ugly: true

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
  config[:site_url] = '/lang-compare'
end

configure :development do
  config[:site_url] = '/'
end

activate :deploy do |deploy|
  deploy.deploy_method = :git
end

def template_proxy(url, lang1, lang2, langs)
  proxy(url, 'template', locals: { lang1: lang1, lang2: lang2, langs: langs }, ignore: true)
end

langs = ['Ruby', 'CoffeeScript', 'Java', 'Python 3']
langs.each do |lang1|
  langs.each do |lang2|
    url = "#{lang1.delete(' ').downcase}-#{lang2.delete(' ').downcase}.html"
    template_proxy url, lang1, lang2, langs
  end
end
template_proxy 'index.html', 'Ruby', 'Python 3', langs

