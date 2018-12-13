class Job < ApplicationRecord
  mount_uploader :application_materials, FileUploader
end
