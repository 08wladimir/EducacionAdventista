class AddCoverAll < ActiveRecord::Migration
  def change
    add_attachment :colegios, :logo
    add_attachment :usuarios, :foto
  end
end
