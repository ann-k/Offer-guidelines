json.extract! public_talk, :id, :theme, :speaker, :public_talk_date, :speaker_contacts, :created_at, :updated_at
json.url public_talk_url(public_talk, format: :json)
