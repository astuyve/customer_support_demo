json.array!(@support_tickets) do |support_ticket|
  json.extract! support_ticket, :id, :email, :title, :message
  json.url support_ticket_url(support_ticket, format: :json)
end
