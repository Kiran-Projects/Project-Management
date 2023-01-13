# frozen_string_literal: true

# == Schema Information
#
# Table name: projects
#
#  id              :integer          not null, primary key
#  contract_amount :decimal(10, 2)   default(0.0)
#  deadline        :datetime
#  location        :string           not null
#  manager_name    :string
#  name            :string           not null
#  start_date      :datetime         not null
#  status          :integer          default("on_hold")
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  client_id       :integer          not null
#
# Indexes
#
#  index_projects_on_client_id  (client_id)
#
# Foreign Keys
#
#  client_id  (client_id => clients.id)
#
class Project < ApplicationRecord
  belongs_to :client
  has_many :project_work_parties
  has_many :work_parties, through: :project_work_parties

  enum status: { on_hold: 0, active: 1, completed: 2 }

  validates :name, :location, :start_date, :client_id, presence: true

  delegate :name, to: :client, prefix: true

  before_save :update_name

  private

  def update_name
    self.name = "#{client_name} - #{location}"
  end
end
