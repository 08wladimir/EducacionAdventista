class RemoveNullUsers < ActiveRecord::Migration
  def change
    change_column_null :usuarios, :nombre, true
    change_column_null :usuarios, :usuario, true
    change_column_null :usuarios, :rol, true
  end
end
