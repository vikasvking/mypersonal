class AddSourceToCurrentaffairs < ActiveRecord::Migration[5.2]
  def change
    add_column :currentaffairs, :source, :string
  end
end
