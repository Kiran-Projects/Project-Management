# == Schema Information
#
# Table name: project_work_parties
#
#  id              :integer          not null, primary key
#  bill_amount     :decimal(, )
#  bill_status     :integer
#  payment_status  :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  projects_id     :integer          not null
#  work_parties_id :integer          not null
#
# Indexes
#
#  index_project_work_parties_on_projects_id      (projects_id)
#  index_project_work_parties_on_work_parties_id  (work_parties_id)
#
# Foreign Keys
#
#  projects_id      (projects_id => projects.id)
#  work_parties_id  (work_parties_id => work_parties.id)
#
require 'rails_helper'

RSpec.describe ProjectWorkParty, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
