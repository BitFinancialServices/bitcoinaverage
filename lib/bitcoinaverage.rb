require 'bitcoinaverage/market_ticker'
require 'bitcoinaverage/global_ticker'

module BitcoinAverage
  def self.global(currency = 'USD')
    GlobalTicker.instance.request_info currency
  end

  def self.market(currency = 'USD')
    MarketTicker.instance.request_info currency
  end
end
