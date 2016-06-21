require 'open3'

CODE_DIR = File.join(File.dirname(__FILE__), 'code')

task default: [:execute]
task execute: [:clean, :execute_java, :execute_ruby, :execute_coffeescript, :execute_python, :execute_php]

task :execute_java do
  puts 'Executing java files'
  Dir.glob File.join(CODE_DIR, '*.java') do |filepath|
    result = execute_file("javac -cp #{CODE_DIR} #{filepath}", "#{filepath}.out")
    next unless result.to_i.zero? # error occurred while compiling
    class_name = File.basename(filepath).gsub('.java', '')
    execute_file("java -cp #{CODE_DIR} #{class_name}", "#{filepath}.out")
  end
  puts "\n\n"
end

task :execute_ruby do
  puts 'Executing ruby files'
  execute_scripts('ruby', 'rb')
  puts "\n\n"
end

task :execute_coffeescript do
  puts 'Executing coffee files'
  execute_scripts('coffee', 'coffee')
  puts "\n\n"
end

task :execute_python do
  puts 'Executing python files'
  execute_scripts('python3', 'py')
  puts "\n\n"
end

task :execute_php do
  puts 'Executing php files'
  execute_scripts('php', 'php')
  puts "\n\n"
end

def execute_scripts(command, ext)
  Dir.glob File.join(CODE_DIR, "*.#{ext}") do |filepath|
    execute_file("#{command} #{filepath}", "#{filepath}.out")
  end
end

def execute_file(command, out_path)
  print '.'
  Open3.popen2e(command) do |_stdin, stdout_and_stderr, _wait_thr|
    File.write(out_path, stdout_and_stderr.read)
  end
end

task :clean do
  FileUtils.rm Dir.glob(File.join(CODE_DIR, '*.class'))
  FileUtils.rm Dir.glob(File.join(CODE_DIR, '*.out'))
end
