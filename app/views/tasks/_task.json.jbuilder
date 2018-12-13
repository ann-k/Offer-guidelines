json.extract! task, :id, :company_name, :company_specialty, :company_description, :social_network_link, :position, :task_description, :task_materials, :deadline, :salary, :correction_charge, :barter, :created_at, :updated_at
json.url task_url(task, format: :json)
