dir_to_write = File.expand_path(File.dirname(__FILE__))
filename = 'output.txt'
File.write "#{dir_to_write}/#{filename}", 'Some glorious content'
