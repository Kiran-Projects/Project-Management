json.extract! client, :id, :name, :address, :contact, :active, :created_at, :updated_at
json.url client_url(client, format: :json)
