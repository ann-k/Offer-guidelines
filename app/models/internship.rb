class Internship < ApplicationRecord
  mount_uploader :application_materials, FileUploader

  validates :email, presence: false, format: { with: /@/ }, if: :step_1?
  validates :company_name, presence: false, if: :step_1?
  validates :company_specialty, presence: false, if: :step_1?
  validates :company_description, presence: false, if: :step_1?
  validates :social_network_link, presence: false, if: :step_1?
  validates :position, presence: false, if: :step_2?
  validates :places_available, presence: false, if: :step_2?
  validates :intern_tasks, presence: false, if: :step_2?
  validates :internship_duration, presence: false, if: :step_2?
  validates :schedule, presence: false, if: :step_2?
  validates :salary_min, presence: false, if: :step_2?
  validates :salary_max, presence: false, if: :step_2?
  validates :conditions, presence: false, if: :step_2?
  validates :application_contacts, presence: false, if: :step_3?
  validates :application_description, presence: false, if: :step_3?
  validates :application_materials, presence: false, if: :step_3?
  validates :deadline, presence: false, if: :step_3?
  validates :status, presence: false, if: :step_3?

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
