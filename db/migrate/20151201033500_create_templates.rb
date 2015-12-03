class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.integer :ownerid
      t.string :schoolname
      t.string :q1
      t.string :qtype1
      t.string :q2
      t.string :qtype2
      t.string :q3
      t.string :qtype3
      t.string :q4
      t.string :qtype4
      t.string :q5
      t.string :qtype5
      t.string :q6
      t.string :qtype6
      t.string :q7
      t.string :qtype7
      t.string :q8
      t.string :qtype8
      t.string :q9
      t.string :qtype9
      t.string :q10
      t.string :qtype10
      t.integer :isActive

      t.timestamps null: false
    end
  end
end
