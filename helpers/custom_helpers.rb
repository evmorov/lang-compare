module CustomHelpers
  Example = Struct.new(:code, :output)

  def examples(language, filenames)
    return [] unless filenames
    examples = []
    each_filename(filenames) do |filename, folder|
      file_content = File.read(code_file_path(language, filename, folder)) rescue next
      output = File.read(code_file_path(language, "#{filename}.out", folder)) rescue nil
      highlighted_code = code(language) { file_content }
      highlighted_code = add_version(highlighted_code, folder) if !folder.empty? && folder != '.'
      examples.push Example.new(highlighted_code, output)
    end
    examples
  end

  def sanitize(str)
    str.tr(' /,', '_').tr('()?', '').downcase
  end

  def urlize(str)
    str.delete(' ').downcase
  end

  def section_empty?(section, lang1, lang2)
    section.last.each do |_header, filenames|
      return false unless no_files?(lang1, filenames[lang1]) && no_files?(lang2, filenames[lang2])
    end
    true
  end

  def no_files?(lang, filenames)
    return true unless filenames
    each_filename(filenames) do |filename, folder|
      return false if File.exist? code_file_path(lang, filename, folder)
    end
    true
  end

  private

  def add_version(code, version)
    version_tag = "<span class='small'>[ #{version} ]</span>"
    version_tag + code
  end

  def each_filename(filenames, &block)
    if filenames.is_a? Hash
      filenames.each { |folder, filename| block.call(filename, folder) }
    else
      block.call(filenames, '')
    end
  end

  def code_file_path(language, filename, folder = '')
    File.join(Dir.pwd, 'code', language, folder, filename)
  end
end

