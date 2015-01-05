json.array!(@as) do |a|
  json.extract! a, :id, :name
  json.url a_url(a, format: :json)
end
