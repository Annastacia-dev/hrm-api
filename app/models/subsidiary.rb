# == Schema Information
#
# Table name: subsidiaries
#
#  id              :uuid             not null, primary key
#  country         :string           not null
#  timezone        :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :uuid             not null
#
# Indexes
#
#  index_subsidiaries_on_organization_id  (organization_id)
#
# Foreign Keys
#
#  fk_rails_...  (organization_id => organizations.id)
#
class Subsidiary < ApplicationRecord
  belongs_to :organization
end
