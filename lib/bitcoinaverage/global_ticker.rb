require 'bitcoinaverage/ticker'

class GlobalTicker < Ticker
  attr_accessor :volume_btc, :volume_percent
end
