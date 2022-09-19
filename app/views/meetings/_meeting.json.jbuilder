json.extract! meeting, :id, :meeting_id, :meeting_title, :meeting_time, :meeting_desc, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
