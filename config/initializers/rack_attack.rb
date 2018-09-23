Rack::Attack.throttle("requests by ip", limit: 10, period: 30) do |request|
  request.ip
end
