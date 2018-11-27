class Internship < ApplicationRecord
  belongs_to :employer, class_name: "User", foreign_key: :employer_id
end
