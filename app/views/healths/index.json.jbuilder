json.array!(@healths) do |health|
  json.extract! health, :id, :user_id, :subject, :details, :file
  json.url health_url(health, format: :json)
end
