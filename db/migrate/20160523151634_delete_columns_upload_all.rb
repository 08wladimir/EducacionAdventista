class DeleteColumnsUploadAll < ActiveRecord::Migration
  def change
    remove_column :colegios, :logo
    remove_column :usuarios, :foto
  end
end
