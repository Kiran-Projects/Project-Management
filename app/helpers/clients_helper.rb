module ClientsHelper
  def client_list
    Client.all.collect { |client| [client.name, client.id] }
  end
end
