json.extract! question, :id, :name, :folder, :feedback, :created_at, :updated_at
json.url question_url(question, format: :json)
