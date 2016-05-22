require 'open3'

CODE_DIR = File.join(File.dirname(__FILE__), 'code')

task execute: [:clean] do
  execute_scripts('ruby', 'rb')
  execute_scripts('coffee', 'coffee')
  execute_java
end

def execute_scripts(command, ext)
  Dir.glob File.join(CODE_DIR, "*.#{ext}") do |filepath|
    execute_file("#{command} #{filepath}", "#{filepath}.out")
  end
end

def execute_java
  Dir.glob File.join(CODE_DIR, '*.java') do |filepath|
    `javac #{filepath}`
    class_name = File.basename(filepath).gsub('.java', '')
    execute_file("java -cp #{CODE_DIR} #{class_name}", "#{filepath}.out")
  end
end

def execute_file(command, out_path)
  Open3.popen2e(command) do |_stdin, stdout_and_stderr, _wait_thr|
    File.write(out_path, stdout_and_stderr.read)
  end
end

task :clean do
  FileUtils.rm Dir.glob(File.join(CODE_DIR, '*.class'))
  FileUtils.rm Dir.glob(File.join(CODE_DIR, '*.out'))
end
