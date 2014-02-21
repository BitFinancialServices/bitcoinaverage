require 'bitcoinaverage/market_ticker'
require 'bitcoinaverage/global_ticker'

class BitcoinAverage
    def self.global(currency="USD")
        @ticker = GlobalTicker.new currency, 'global'
    end
    def self.market(currency="USD")
        @ticker = MarketTicker.new currency, 'market'
    end
end
