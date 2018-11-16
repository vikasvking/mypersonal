class AddTodoToCurrentaffairs < ActiveRecord::Migration[5.2]
  def change
    add_column :currentaffairs, :todo, :string
  end
end
