module ListClasses
    def list_classes
        puts "Classes:"
        @data["classes"].each_with_index do |cls, index|
        puts "#{index + 1}. #{cls}"
        end
    end
end