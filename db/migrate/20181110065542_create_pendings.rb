class CreatePendings < ActiveRecord::Migration[5.2]
  def change
    create_table :pendings do |t|
      t.string :name

      t.timestamps
    end
  end
end
