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

def template_proxy(url, lang1, lang2, lang_list)
  proxy(url, 'template', locals: { lang1: lang1, lang2: lang2, lang_list: lang_list }, ignore: true)
end

lang_list = [
  ['Ruby', 'CoffeeScript'],
  ['Ruby', 'Java'],
  ['Ruby', 'Python 3'],
  ['CoffeeScript', 'Ruby'],
  ['CoffeeScript', 'Java'],
  ['CoffeeScript', 'Python 3'],
  ['Java', 'Ruby'],
  ['Java', 'CoffeeScript'],
  ['Java', 'Python 3'],
  ['Python 3', 'Ruby'],
  ['Python 3', 'CoffeeScript'],
  ['Python 3', 'Java']
]
lang_list.each do |lang_pair|
  url = "#{lang_pair[0].delete(' ').downcase}-#{lang_pair[1].delete(' ').downcase}.html"
  template_proxy url, lang_pair[0], lang_pair[1], lang_list
end
template_proxy 'index.html', 'Ruby', 'CoffeeScript', lang_list

