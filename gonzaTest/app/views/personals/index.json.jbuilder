json.array!(@personals) do |personal|
  json.extract! personal, :nombre
  json.url personal_url(personal, format: :json)
end
