# == Schema Information
#
# Table name: addresses
#
#  id               :uuid             not null, primary key
#  addressable_type :string           not null
#  building_name    :string
#  city             :string
#  coordinates      :string
#  country          :string           default("Kenya"), not null
#  county           :string
#  house_number     :string
#  landmark         :string
#  po_box           :string
#  postal_code      :string
#  street           :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  addressable_id   :uuid             not null
#
# Indexes
#
#  index_addresses_on_addressable  (addressable_type,addressable_id)
#
require 'rails_helper'

RSpec.describe Address, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
