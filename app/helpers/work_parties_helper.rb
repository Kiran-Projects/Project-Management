module WorkPartiesHelper
  def work_party_list
    WorkParty.all.collect do |party|
      ["#{party.name} (#{party.work_type.name})", party.id]
    end
  end
end
