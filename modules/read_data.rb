require 'json'

module ReadData 
    def access_data(path)
        file_data = File.read(path)
        puts file_data
        puts JSON.parse(file_data) 
    end
end