# Simple app to demonstrate Gem integration for Ruby on Rails

This is a vanilla rails 4 application, created with scaffold and bootstrap, designed to show how easy it is to integrate something like `slack-notifier` into a project.

I'm following a very simple blog post written by @pete2786, which you can find here: http://pete2786.github.io/2015/08/10/ruby-slack-notifier.html

We're using the `slack-notifier` gem available here: https://github.com/stevenosloan/slack-notifier

# Quick steps
1. Include `slack-notifier` in your `Gemfile` and `bundle`.
2. Set a webhook constant in a new initializer, or simply in the concern created in step 3.
3. Create a new concern called `slack_notifiable.rb`
4. Require `slack-notifier` and `active_support/concern`
5. Use `included_do` to patch into the callback chain, and make it call `ping_slack`, a new method.
6. Write `ping_slack`, following the API guide for `slack-notifier`. Configure the channel and username here.
7. Write `slack_message`, and raise `NotImplementedError` or provide a sensible default.
8. Include the concern in your model file.
9. Define `slack_message` in your model file.

## Follow-Up
You may be interested in reading about Slack formatting options: https://api.slack.com/docs/formatting
