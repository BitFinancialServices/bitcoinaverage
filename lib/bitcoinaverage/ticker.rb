require 'bitcoinaverage/requester'
require 'json'

module BitcoinAverage
  class Ticker
    include BitcoinAverage::Requester
    attr_accessor :avg_24h, :ask, :bid, :last, :timestamp

    def request_info(currency = 'USD')
      response = get(avg_type, currency)
      if response.success?
        # Small patch since an attribute can't be named "24h_avg"
        self.avg_24h = response['24h_avg']
        response.delete('24h_avg')
        response.each do |key, value|
          send("#{key}=", value)
        end
        self
      else
        fail 'Error receiving response' # TODO: extended
      end
    end
  end
end
