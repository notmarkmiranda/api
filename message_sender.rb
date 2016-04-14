require 'rubygems'
require 'twilio-ruby'
require_relative 'keys'


def message
  account_sid = @t_sid
  auth_token = @t_token
  client = Twilio::REST::Client.new(account_sid, auth_token)
  from   = "+12674335924"
  data   = {
    :from => from,
    :to   => "+13038476953",
    :body => "spam is the best"
  }

  client.account.messages.create(data)

  puts "Sent message!."
end
