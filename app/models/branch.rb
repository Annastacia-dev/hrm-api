# == Schema Information
#
# Table name: branches
#
#  id            :uuid             not null, primary key
#  location      :string
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  subsidiary_id :uuid             not null
#
# Indexes
#
#  index_branches_on_subsidiary_id  (subsidiary_id)
#
# Foreign Keys
#
#  fk_rails_...  (subsidiary_id => subsidiaries.id)
#
class Branch < ApplicationRecord
  belongs_to :subsidiary
end
