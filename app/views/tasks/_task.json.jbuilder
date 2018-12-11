json.extract! task, :id, :name, :start, :end, :created_at, :updated_at
json.url task_url(task, format: :json)
