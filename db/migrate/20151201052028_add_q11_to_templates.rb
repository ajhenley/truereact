class AddQ11ToTemplates < ActiveRecord::Migration
  def change
    add_column :templates, :q11, :string
    add_column :templates, :qtype11, :string
    add_column :templates, :q12, :string
    add_column :templates, :qtype12, :string
    add_column :templates, :q13, :string
    add_column :templates, :qtype13, :string
    add_column :templates, :q14, :string
    add_column :templates, :qtype14, :string
    add_column :templates, :q15, :string
    add_column :templates, :qtype15, :string
  end
end
