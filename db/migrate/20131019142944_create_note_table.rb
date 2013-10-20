class CreateNoteTable < ActiveRecord::Migration
  def up
    create_table :notes do |t|
      t.string :title
      t.string :description
    end
  end


  def down
    drop_table :notes
  end
end
