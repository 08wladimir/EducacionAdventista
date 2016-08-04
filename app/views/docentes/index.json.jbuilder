json.array!(@docentes) do |docente|
  json.extract! docente, :id, :cedula, :nombre, :apellido, :telefono, :email, :area, :titulos, :cargo, :colegio_id
  json.url docente_url(docente, format: :json)
end
