require 'json'

require './modules/AddClass.rb'
require './modules/AddStudent.rb'
require './modules/ListClasses.rb'
require './modules/ListStudents.rb'
require './modules/LoadData.rb'
require './modules/MarkAttendance.rb'
require './modules/SaveData.rb'
require './modules/ViewAttendance.rb'
require './modules/ClearAllRecords.rb'

class AttendanceManagementSystem include AddClass, AddStudent, ListClasses, ListStudents, LoadData, MarkAttendance, SaveData, ViewAttendance, ClearAllRecords
  def initialize
    @data_file = './data.json'
    load_data
  end

  def loadData
    load_data
  end

  def saveData
    save_data
  end

  def addStudent
    add_student
  end

  def listStudents
    list_students
  end

  def addClass
    add_class
  end

  def listClasses
    list_classes
  end

  def markAttendance
    mark_attendance
  end

  def viewAttendance
    view_attendance
  end

  def clearAll
    clear_all_records
  end
end

