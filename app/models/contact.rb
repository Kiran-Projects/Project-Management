# == Schema Information
#
# Table name: contacts
#
#  id           :integer          not null, primary key
#  contact_type :integer
#  name         :string
#  phone        :string
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  client_id    :integer
#
# Indexes
#
#  index_contacts_on_client_id  (client_id)
#
class Contact < ApplicationRecord
  belongs_to :client, optional: true

  enum contact_type: { office_Staff: 0, client_staff: 1, vendor_staff: 2 }

  delegate :name, to: :client, prefix: true, allow_nil: true
end
