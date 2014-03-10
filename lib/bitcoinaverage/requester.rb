require 'httparty'

module BitcoinAverage
  module Requester
    def get(average, currency = 'USD')
      fail "#{currency} is not a known currency" unless known_currency?(currency)
      base_url = 'https://api.bitcoinaverage.com/ticker/'
      avg_url = average == 'global' ? average + '/' : ''
      ccy_url = currency
      final_url = base_url + avg_url + ccy_url

      HTTParty.get(final_url)
    end

    def known_currency?(currency)
      available_currencies.include?(currency)
    end

    def available_currencies
      #@available_currencies ||= File.open('lib/bitcoinaverage/available_currencies.csv', 'r').read.parse_csv
      @available_currencies ||= File.open(File.expand_path(File.dirname(__FILE__))+'/available_currencies.csv', 'r').read.parse_csv
    end
  end
end
