json.extract! log, :id, :timestamp, :operation_id, :operation_type, :content, :created_at, :updated_at
json.url log_url(log, format: :json)
