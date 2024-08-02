module LoadData
    def load_data
        if File.exist?(@data_file)
            file = File.read(@data_file)
            @data = JSON.parse(file)
        else
            @data = {
                "students" => [],
                "classes" => [],
                "attendance_records" => {}
            }
            save_data
        end
    end
end