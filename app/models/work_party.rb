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
class WorkParty < ApplicationRecord
  belongs_to :work_type
  has_many :project_work_parties
  has_many :projects, through: :project_work_parties
end
