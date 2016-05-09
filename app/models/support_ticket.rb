class SupportTicket < ActiveRecord::Base
  include SlackNotifiable

  def slack_message
    {
        "text": message_text,
        "mrkdwn": true
    }
  end

  def message_text
    <<-msg
      A new Support Ticket has been opened:
      ```
      User: #{email}
      Title: #{title}
      Message: #{message}
      ```
    msg
  end

end
