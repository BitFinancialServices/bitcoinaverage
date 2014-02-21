require 'bitcoinaverage/ticker'
require 'singleton'

module BitcoinAverage
  class GlobalTicker < BitcoinAverage::Ticker
    include Singleton
    attr_accessor :volume_btc, :volume_percent
    def avg_type
      'global'
    end
  end
end
