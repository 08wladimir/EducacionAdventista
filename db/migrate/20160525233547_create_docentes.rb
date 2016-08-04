class CreateDocentes < ActiveRecord::Migration
  def change
    create_table :docentes do |t|
      t.string :cedula
      t.string :nombre
      t.string :apellido
      t.string :telefono
      t.string :email
      t.string :area
      t.text :titulos
      t.string :cargo
      t.references :colegio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
