json.array!(@tracks) do |track|
  json.extract! track, :id, :title, :embed_code, :time_start, :time_end, :event_date, :event_name, :event_location, :description, :user_id, :category_id
  json.url track_url(track, format: :json)
end
