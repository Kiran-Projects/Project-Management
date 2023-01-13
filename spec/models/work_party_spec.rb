# == Schema Information
#
# Table name: work_parties
#
#  id           :integer          not null, primary key
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  work_type_id :integer          not null
#
# Indexes
#
#  index_work_parties_on_work_type_id  (work_type_id)
#
# Foreign Keys
#
#  work_type_id  (work_type_id => work_types.id)
#
require 'rails_helper'

RSpec.describe WorkParty, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
