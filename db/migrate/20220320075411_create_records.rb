class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string :name,           null: false
      t.date   :day,           null: false
      t.string :manager,           null: false
      t.integer :cut_id,            null: false
      t.integer :color_id,            null: false
      t.integer :parm_id,            null: false
      t.integer :treatment_id,            null: false
      t.text :description,               null: false
      t.references :user,                null: false, foreign_key: true
      t.timestamps
    end
  end
end
