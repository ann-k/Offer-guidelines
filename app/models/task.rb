class Task < ApplicationRecord
  mount_uploader :task_materials, FileUploader
end
