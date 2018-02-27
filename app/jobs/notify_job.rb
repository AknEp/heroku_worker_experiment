require 'net/http'

class NotifyJob < ApplicationJob
  queue_as :default

  def perform(param)
    # sleep X seconds
    sleep 1
    # notify to slack

    params = {
      "channel"  => "#sandbox",
      "username" => "webhookbot",
      "text": "test message at #{param}",
      "icon_emoji": ":ghost:"
    }
    
    uri = URI.parse(ENV['SLACK_URL'])
    
    header = {'Content-Type': 'text/json'}
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    request = Net::HTTP::Post.new(uri.request_uri, header)
    request.body = params.to_json

    # Send the request
    response = http.request(request)
  end
end
