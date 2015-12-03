class AddStudentidToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :studentid, :integer
  end
end
