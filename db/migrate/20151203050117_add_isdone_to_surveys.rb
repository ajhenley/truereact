class AddIsdoneToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :isdone, :integer
  end
end
