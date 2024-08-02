module SaveData
    def save_data
        File.open(@data_file, 'w') do |file|
        file.write(JSON.pretty_generate(@data))
        end
    end
end