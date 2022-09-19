json.extract! member, :id, :Mem_id, :Mem_isActive, :Mem_name, :Mem_email, :Mem_password, :Mem_Points, :mem_Dept, :created_at, :updated_at
json.url member_url(member, format: :json)
