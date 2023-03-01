module SlackNotifier
  CLIENT = Slack::Notifier.new("#{Rails.application.credentials.dig(:slack)}")
end