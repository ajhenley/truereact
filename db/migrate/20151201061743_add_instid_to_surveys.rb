class AddInstidToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :instid, :string
    add_column :surveys, :string, :string
  end
end
