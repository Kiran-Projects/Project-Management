json.extract! project, :id, :name, :location, :client_id, :start_date, :deadline, :status, :manager_name, :created_at, :updated_at
json.url project_url(project, format: :json)
