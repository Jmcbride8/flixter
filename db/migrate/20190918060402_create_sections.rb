class CreateSections < ActiveRecord::Migration[5.2]
  def up
    create_table :sections do |t|
     t.string :title
     t.integer :course_id
     t.timestamps
    end
    add_index :sections, :course_id
  end

  def down
    drop_table :sections
  end

end