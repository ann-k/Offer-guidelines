json.extract! question, :id, :name, :question, :contacts, :created_at, :updated_at
json.url question_url(question, format: :json)
