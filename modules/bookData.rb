module BookData
  def create_fil(file_name)
    File.new(file_name, 'w+') if !File.exists?(file_name)
  end
end