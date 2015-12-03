class AddOwneridToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :ownerid, :integer
  end
end
