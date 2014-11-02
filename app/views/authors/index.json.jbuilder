json.array!(@authors) do |author|
  json.extract! author, :id, :last_name, :first_name
  json.url author_url(author, format: :json)
end
