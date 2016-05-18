module CustomHelpers
  CODE_EXTENSION = {
    'coffee' => 'coffeescript',
    'rb' => 'ruby',
    'java' => 'java'
  }.freeze

  def code_from_file(filename)
    return unless filename
    file_extension = CODE_EXTENSION[(File.extname filename).delete('.')]
    code(file_extension) do
      File.read File.join(Dir.pwd, 'code', filename) rescue return
    end
  end

  def sanitize(str)
    str.tr(' /,', '_').tr('()?', '').downcase
  end

  def section_empty?(section, lang1, lang2)
    section.last.each do |_header, filenames|
      return false unless no_files?(filenames[lang1.downcase], filenames[lang2.downcase])
    end
    true
  end

  def no_files?(filename1, filename2)
    file1 = filename1 && (File.exist? File.join(Dir.pwd, 'code', filename1))
    file2 = filename2 && (File.exist? File.join(Dir.pwd, 'code', filename2))
    !(file1 || file2)
  end
end
