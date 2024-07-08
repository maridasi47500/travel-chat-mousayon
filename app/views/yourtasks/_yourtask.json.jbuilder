json.extract! yourtask, :id, :mytask_id, :user_id, :created_at, :updated_at
json.url yourtask_url(yourtask, format: :json)
