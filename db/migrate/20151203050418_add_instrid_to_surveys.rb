class AddInstridToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :instrid, :string
  end
end
