json.array!(@colegios) do |colegio|
  json.extract! colegio, :id, :nombre, :direccion, :telefono, :url, :logo, :cursoMin, :cursoMax, :modalidad, :ubicacion, :campoLocal, :union, :pais
  json.url colegio_url(colegio, format: :json)
end
