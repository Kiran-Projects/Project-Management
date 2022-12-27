module ContactsHelper
  def contact_types
    Contact.contact_types.collect { |k, _v| [k.titleize, k] }
  end
end
