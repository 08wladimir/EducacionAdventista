json.array!(@uni_asos) do |uni_aso|
  json.extract! uni_aso, :id, :Union, :Campo
  json.url uni_aso_url(uni_aso, format: :json)
end
