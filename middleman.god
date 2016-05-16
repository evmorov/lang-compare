God.watch do |w|
  w.name = 'middleman'
  w.start = 'bundle exec middleman server'
  w.keepalive
  w.log = "#{File.expand_path('..', __FILE__)}/middleman.log"
  w.dir = File.expand_path('..', __FILE__)
end
