# == Schema Information
#
# Table name: work_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class WorkType < ApplicationRecord
  has_many :work_parties
end
