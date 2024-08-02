module ClearAllRecords
    def clear_all_records
        @data = {
        "students" => [],
        "classes" => [],
        "attendance_records" => {}
        }
        save_data
        puts "\nAll records have been cleared."
    end
end