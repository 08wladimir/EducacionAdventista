class AddColumnToDocentes < ActiveRecord::Migration
  def change
    add_column :docentes, :creado_by, :string
  end
end
