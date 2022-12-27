# frozen_string_literal: true

# == Schema Information
#
# Table name: clients
#
#  id         :integer          not null, primary key
#  active     :boolean          default(TRUE)
#  address    :string
#  contact    :string
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Client < ApplicationRecord
  has_many :contacts
  has_many :projects

  validates :name, presence: true
end
