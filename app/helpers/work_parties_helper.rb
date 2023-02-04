module WorkPartiesHelper
  def work_party_list
    WorkParty.all.collect do |party|
      ["#{party.name&.titleize} (#{party.work_type.name&.titleize})", party.id]
    end
  end
end
