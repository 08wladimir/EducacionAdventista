class DeleteColumAdd < ActiveRecord::Migration
  def change
    remove_column :docentes, :colegio_id
    add_column :docentes, :colegio_id, :string
  end
end
