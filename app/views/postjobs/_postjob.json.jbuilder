json.extract! postjob, :id, :title, :content, :client_id, :timestamp, :price, :created_at, :updated_at
json.url postjob_url(postjob, format: :json)