json.array!(@projects) do |project|
  json.extract! project, :id, :name, :link, :source_code
  json.url project_url(project, format: :json)
end
