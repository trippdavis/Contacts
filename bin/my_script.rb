require 'addressable/uri'
require 'rest-client'



# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: 'users/2/comments.json'
# ).to_s
#
# puts RestClient.get(url)

# puts RestClient.post(
#   url,
#   { contact: { name: "scott", email: "scott@example.com", user_id: 1 } }
# )
#
# puts RestClient.post(
#   url,
#   { contact: { name: "kevin", email: "kevin@example.com", user_id: 2 } }
# )
#
# url2 = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users.json'
# ).to_s
#
# puts RestClient.post(
#
#   url2,
#   { user: { :username => "kevingan" } }
# )

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: 'users/2/comments.json'
# ).to_s
#
# puts RestClient.post(
#   url,
#   { comment: { body: "yayayay"}}
# )
#
# url2 = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: 'contacts/2/comments.json'
# ).to_s
#
# puts RestClient.post(
#   url2,
#   { comment: { body: "hahaha"}}
# )

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: 'comments/1.json'
).to_s

puts RestClient.delete(url)
