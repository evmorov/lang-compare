require 'open3'

CODE_DIR = File.join(File.dirname(__FILE__), 'code')

task default: [:run]
task run: [:clean, :run_java, :run_javascript, :run_ruby, :run_coffeescript, :run_python, :run_php]

task :run_java do
  puts 'Executing java files'
  Dir.glob File.join(CODE_DIR, '**', '*.java') do |filepath|
    result = run_file("javac -cp #{CODE_DIR}/java #{filepath}", "#{filepath}.out")
    next unless result.to_i.zero? # error occurred while compiling
    class_name = File.basename(filepath).gsub('.java', '')
    run_file("java -cp #{CODE_DIR}/java #{class_name}", "#{filepath}.out")
  end
  puts "\n\n"
end

task :run_ruby do
  puts 'Executing ruby files'
  run_scripts('ruby', 'rb')
  puts "\n\n"
end

task :run_coffeescript do
  puts 'Executing coffee files'
  run_scripts('coffee', 'coffee')
  puts "\n\n"
end

task :run_javascript do
  puts 'Executing js files'
  run_scripts('node --use_strict', 'js')
  puts "\n\n"
end

task :run_python do
  puts 'Executing python files'
  run_scripts('python3', 'py')
  puts "\n\n"
end

task :run_php do
  puts 'Executing php files'
  run_scripts('php', 'php')
  puts "\n\n"
end

def run_scripts(command, ext)
  Dir.glob File.join(CODE_DIR, '**', "*.#{ext}") do |filepath|
    run_file("#{command} #{filepath}", "#{filepath}.out")
  end
end

def run_file(command, out_path)
  print '.'
  Open3.popen2e(command) do |_stdin, stdout_and_stderr, _wait_thr|
    File.write(out_path, stdout_and_stderr.read)
  end
end

task :clean do
  [
    '*.class',
    '*.out',
    '*.pyc',
    'output.txt'
  ].each do |file|
    FileUtils.rm Dir.glob(File.join(CODE_DIR, '**', file))
  end
end
