class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      
      t.string :sentence
      t.string :meaning

      t.timestamps null: false
    end
  end
end
