require 'active_support/concern'
require 'slack-notifier'

module SlackNotifiable
  extend ActiveSupport::Concern
  included do
    after_create :notify_slack
  end

  def notify_slack
    begin
      Slack::Notifier.new(SLACK_WEBHOOK, username: 'Customer Support Robot').ping(slack_message)
    rescue
      # Die silently
    end
  end

  def slack_message
    raise NotImplementedError
  end

end
