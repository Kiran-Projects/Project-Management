# == Schema Information
#
# Table name: project_work_parties
#
#  id             :integer          not null, primary key
#  bill_amount    :decimal(10, 2)   default(0.0), not null
#  bill_status    :integer          default("incomplete"), not null
#  payment_status :integer          default("unpaid"), not null
#  remarks        :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  project_id     :integer          not null
#  work_party_id  :integer          not null
#
# Indexes
#
#  index_project_work_parties_on_project_id     (project_id)
#  index_project_work_parties_on_work_party_id  (work_party_id)
#
# Foreign Keys
#
#  project_id     (project_id => projects.id)
#  work_party_id  (work_party_id => work_parties.id)
#
require 'rails_helper'

RSpec.describe ProjectWorkParty, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
