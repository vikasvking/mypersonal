class AddDoneToCurrentaffairs < ActiveRecord::Migration[5.2]
  def change
    add_column :currentaffairs, :done, :boolean
  end
end
