class CreateTaskrecords < ActiveRecord::Migration[5.2]
  def change
    create_table :taskrecords do |t|
      t.string :date

      t.timestamps
    end
  end
end
