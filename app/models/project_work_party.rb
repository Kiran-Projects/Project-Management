# == Schema Information
#
# Table name: project_work_parties
#
#  id             :integer          not null, primary key
#  bill_amount    :decimal(10, 2)   default(0.0), not null
#  bill_status    :integer          default("incomplete"), not null
#  payment_status :integer          default("unpaid"), not null
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
class ProjectWorkParty < ApplicationRecord
  belongs_to :project
  belongs_to :work_party

  enum bill_status: %i[incomplete complete]
  enum payment_status: %i[unpaid paid]

  validates :bill_amount, numericality: {minimum: 0, maximum: 9_999_999}
  validates_uniqueness_of :work_party_id, scope: :project_id

  delegate :work_type_name, to: :work_party, allow_nil: true
  delegate :name, to: :work_party, prefix: true, allow_nil: true

  scope :saved_only, -> { where.not(id: nil) }
end
