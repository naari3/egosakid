# frozen_string_literal: true

Rack::Attack.throttle('requests by ip', limit: 10, period: 30, &:ip)
