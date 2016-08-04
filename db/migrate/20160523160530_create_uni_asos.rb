class CreateUniAsos < ActiveRecord::Migration
  def change
    create_table :uni_asos do |t|
      t.string :Union
      t.string :Campo

      t.timestamps null: false
    end
  end
end
