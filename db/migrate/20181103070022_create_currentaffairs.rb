class CreateCurrentaffairs < ActiveRecord::Migration[5.2]
  def change
    create_table :currentaffairs do |t|
      t.datetime :name

      t.timestamps
    end
  end
end
