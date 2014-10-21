json.array!(@rooms) do |room|
  json.extract! room, :id, :name, :private
  json.url room_url(room, format: :json)
end
