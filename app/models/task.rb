class Task < ApplicationRecord
  mount_uploader :task_materials, FileUploader

  validates :email, presence: true, format: { with: /@/ }, if: :step_1?
  validates :company_name, presence: true, if: :step_1?
  validates :company_specialty, presence: true, if: :step_1?
  validates :company_description, presence: false, if: :step_1?
  validates :social_network_link, presence: false, if: :step_1?
  validates :position, presence: true, if: :step_2?
  validates :task_description, presence: true, if: :step_2?
  validates :task_materials, presence: false, if: :step_2?
  validates :deadline, presence: true, if: :step_2?
  validates :salary, presence: true, if: :step_2?
  validates :correction_charge, presence: true, if: :step_2?
  validates :barter, presence: false, if: :step_2?

  def step_1?
    step == 1
  end

  def step_2?
    step == 2
  end

end
