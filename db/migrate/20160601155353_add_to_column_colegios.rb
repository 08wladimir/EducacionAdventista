class AddToColumnColegios < ActiveRecord::Migration
  def change
    add_column :colegios, :creado_by, :string
  end
end
