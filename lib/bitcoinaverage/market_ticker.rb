require 'bitcoinaverage/ticker'
require 'singleton'

module BitcoinAverage
  class MarketTicker < BitcoinAverage::Ticker
    include Singleton
    attr_accessor :total_vol
    def avg_type
      'market'
    end
  end
end
