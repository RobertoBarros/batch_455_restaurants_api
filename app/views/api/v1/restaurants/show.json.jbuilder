json.extract! @restaurant, :id, :name, :address

json.comments @restaurant.comments do |comment|
  json.extract! comment, :id, :content

  json.user do
    json.extract! comment.user, :id, :name, :email
  end
end
