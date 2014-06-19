json.array!(@comments) do |comment|
  json.extract! comment, :id, :content, :comment_project_id, :comment_user_id
  json.url comment_url(comment, format: :json)
end
