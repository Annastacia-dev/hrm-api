# == Schema Information
#
# Table name: personal_details
#
#  id            :uuid             not null, primary key
#  date_of_birth :datetime         not null
#  first_name    :string           not null
#  last_name     :string           not null
#  middle_name   :string
#  phone_number  :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  employee_id   :uuid             not null
#
# Indexes
#
#  index_personal_details_on_employee_id  (employee_id)
#
# Foreign Keys
#
#  fk_rails_...  (employee_id => employees.id)
#
class PersonalDetail < ApplicationRecord
  # --- associations
  belongs_to :employee
end
