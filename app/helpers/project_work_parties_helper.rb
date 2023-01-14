module ProjectWorkPartiesHelper
  def bill_statuses
    ProjectWorkParty.bill_statuses.collect { |k, _v| [k.titleize, k] }
  end

  def payment_statuses
    ProjectWorkParty.payment_statuses.collect { |k, _v| [k.titleize, k] }
  end
end
