# == Schema Information
#
# Table name: projects
#
#  id           :integer          not null, primary key
#  deadline     :datetime
#  location     :string           not null
#  manager_name :string
#  name         :string           not null
#  start_date   :datetime         not null
#  status       :integer          default("on_hold")
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  client_id    :integer          not null
#
# Indexes
#
#  index_projects_on_client_id  (client_id)
#
# Foreign Keys
#
#  client_id  (client_id => clients.id)
#
require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
end
