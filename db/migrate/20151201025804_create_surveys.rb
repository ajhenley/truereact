class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :subj
      t.string :crsenum
      t.string :sect
      t.string :coursetitle
      t.integer :credits
      t.string :instrfirst
      t.string :instrlast
      t.text :q1text
      t.integer :q1num
      t.text :q2text
      t.integer :q2num
      t.text :q3text
      t.integer :q3num
      t.text :q4text
      t.integer :q4num
      t.text :q5text
      t.integer :q5num
      t.text :q6text
      t.integer :q6num
      t.text :q7text
      t.integer :q7num
      t.text :q8text
      t.integer :q8num
      t.text :q9text
      t.integer :q9num
      t.text :q10text
      t.integer :q10num
      t.text :q1
      t.text :q2
      t.text :q3
      t.text :q4
      t.text :q5
      t.text :q6
      t.text :q7
      t.text :q8
      t.text :q9
      t.text :q10

      t.timestamps null: false
    end
  end
end
