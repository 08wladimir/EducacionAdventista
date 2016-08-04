class CreateColegios < ActiveRecord::Migration
  def change
    create_table :colegios do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.string :url
      t.string :logo
      t.string :cursoMin
      t.string :cursoMax
      t.string :modalidad
      t.string :ubicacion
      t.string :campoLocal
      t.string :union
      t.string :pais

      t.timestamps null: false
    end
  end
end
