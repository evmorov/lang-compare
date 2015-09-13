module CustomHelpers
  CODE_EXTENSION = {
    'coffee' => 'coffeescript',
    'rb' => 'ruby',
    'java' => 'java'
  }

  def code_file(filename)
    return 'Not available' unless filename

    file_extension = CODE_EXTENSION[(File.extname filename).delete('.')]
    code(file_extension) do
      File.read "#{Dir.pwd}/code/#{filename}" rescue return 'No way to do that'
    end
  end

  def header_to_id(header)
    header.tr(' ', '_').downcase
  end
end
