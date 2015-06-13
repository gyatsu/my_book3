json.array!(@book3s) do |book3|
  json.extract! book3, :id, :bookname, :author, :price, :publisher, :date, :isbn
  json.url book3_url(book3, format: :json)
end
