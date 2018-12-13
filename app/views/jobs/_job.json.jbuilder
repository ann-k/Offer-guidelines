json.extract! job, :id, :email, :company_name, :company_specialty, :company_description, :social_network_link, :position, :places_available, :worker_tasks, :special_requirements, :work_start_date, :schedule, :salary, :conditions, :application_contacts, :application_description, :application_materials, :deadline, :created_at, :updated_at
json.url job_url(job, format: :json)
