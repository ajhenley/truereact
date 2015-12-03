class AddQToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :q11, :text
    add_column :surveys, :q12, :text
    add_column :surveys, :q13, :text
    add_column :surveys, :q14, :text
    add_column :surveys, :q15, :text
    add_column :surveys, :q11num, :integer
    add_column :surveys, :q12num, :integer
    add_column :surveys, :q13num, :integer
    add_column :surveys, :q14num, :integer
    add_column :surveys, :q15num, :integer
    add_column :surveys, :q11text, :text
    add_column :surveys, :q12text, :text
    add_column :surveys, :q13text, :text
    add_column :surveys, :q14text, :text
    add_column :surveys, :q15text, :text
  end
end
