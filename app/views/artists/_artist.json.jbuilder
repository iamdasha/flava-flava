json.extract! artist, :id, :name, :sex, :age, :created_at, :updated_at
json.url artist_url(artist, format: :json)
