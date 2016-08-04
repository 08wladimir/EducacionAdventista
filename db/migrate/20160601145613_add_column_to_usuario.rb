class AddColumnToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :creado_by, :string
  end
end
