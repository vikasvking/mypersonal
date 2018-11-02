class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.string :name,nil: false
      t.integer :revision
      t.integer :study_id

      t.timestamps
    end
  end
end
