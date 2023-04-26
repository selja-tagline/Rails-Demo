json.partial! "posts/post", post: @post

# json.set! :author do
#     json.set! :name, 'David'
# endgit sta
json.key_format! camelize: :lower
json.first_name 'David'

hash = {author:{ name: "Selja"} }

json.post do 
    json.title "Ruby on Rails"
    json.merge! hash
end

