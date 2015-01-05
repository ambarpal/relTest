json.array!(@bs) do |b|
  json.extract! b, :id, :surname
  json.url b_url(b, format: :json)
end
