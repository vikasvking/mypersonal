class CreateStudies < ActiveRecord::Migration[5.2]
  def change
    create_table :studies do |t|
      t.string :subject,nil: false
      t.string :book,nil: false

      t.timestamps
    end
  end
end
