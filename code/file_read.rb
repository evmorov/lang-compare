file_path = File.expand_path('file.txt', File.dirname(__FILE__))
p File.read(file_path)
# "Hello!\n"
