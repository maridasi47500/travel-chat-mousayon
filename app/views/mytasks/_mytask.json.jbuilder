json.extract! mytask, :id, :name, :user_id, :created_at, :updated_at
json.url mytask_url(mytask, format: :json)
