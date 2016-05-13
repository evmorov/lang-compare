module CustomHelpers
  CODE_EXTENSION = {
    'coffee' => 'coffeescript',
    'rb' => 'ruby',
    'java' => 'java'
  }

  def code_from_file(filename)
    file_extension = CODE_EXTENSION[(File.extname filename).delete('.')]
    code(file_extension) do
      File.read File.join(Dir.pwd, 'code', filename)
    end
  end

  def sanitize(str)
    str.tr(' /,', '_').tr('()?', '').downcase
  end
end
