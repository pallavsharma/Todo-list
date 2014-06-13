json.array!(@projects) do |project|
  json.extract! project, :id, :projtitle, :projdesc
  json.url project_url(project, format: :json)
end
