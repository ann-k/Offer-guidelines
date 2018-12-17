class Internship < ApplicationRecord
  mount_uploader :application_materials, FileUploader

  validates :email, presence: true, format: { with: /@/ }, if: :step_1?
  validates :company_name, presence: true, if: :step_1?
  validates :company_specialty, presence: true, if: :step_1?
  validates :company_description, presence: false, if: :step_1?
  validates :social_network_link, presence: false, if: :step_1?
  validates :position, presence: true, if: :step_2?
  validates :places_available, presence: false, if: :step_2?
  validates :intern_tasks, presence: true, if: :step_2?
  validates :internship_duration, presence: true, if: :step_2?
  validates :schedule, presence: true, if: :step_2?
  validates :salary, presence: true, if: :step_2?
  validates :conditions, presence: false, if: :step_2?
  validates :application_contacts, presence: true, if: :step_3?
  validates :application_description, presence: false, if: :step_3?
  validates :application_materials, presence: false, if: :step_3?
  validates :deadline, presence: true, if: :step_3?
  validates :status, presence: true, if: :step_3?

  def step_1?
    step == 1
  end

  def step_2?
    step == 2
  end

  def step_3?
    step == 3
  end

end
