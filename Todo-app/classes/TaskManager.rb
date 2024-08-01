require "./modules/Add.rb"
require "./modules/Clear.rb"
require './modules/Complete.rb'
require './modules/Delete.rb'
require './modules/Display.rb'
require './modules/Edit.rb'

class TaskManager extend Add, Clear, Complete, Delete, Display, Edit
    def initialize
    end

    def self.addTask(task)
        add(task)
    end

    def self.clearAll
        clear
    end

    def self.completedTask(taskIndex)
        completed(taskIndex)
    end

    def self.deleteTask(taskIndex)
        delete(taskIndex)
    end

    def self.deleteAllTasks
        deleteAll
    end

    def self.showTasks
        displayTasks
    end

    def self.showCompletedTasks
        displayCompletedTasks
    end

    def self.editTask(taskIndex, text)
        edit(taskIndex, text)
    end
end