class AddCrnToSurvey < ActiveRecord::Migration
  def change
    add_column :surveys, :crn, :string
  end
end
