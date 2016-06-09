json.array!(@jobs) do |job|
  json.extract! job, :id, :description, :done, :project_id
  json.url job_url(job, format: :json)
end
