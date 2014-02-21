require 'httparty'

module BitcoinAverage
  module Requester
    def sendrequest(average,currency='USD')
      raise "#{currency} is not a known currency" unless known_currency?(currency)
      base_url='https://api.bitcoinaverage.com/ticker/'
      avg_url= average == 'global'? average+'/' : ''
      ccy_url=currency
      final_url= base_url+avg_url+ccy_url

      response=HTTParty.get final_url
    end

    def known_currency?(currency)
      av_currencies=File.open('lib/bitcoinaverage/available_currencies.csv','r')
      .read
      .parse_csv
      true unless !av_currencies.include? currency
    end

    #Method to obtain all the available currencies
    #
    #Note: it's not run repeatedly, rather the result 
    #was written to a file.
    #Note 2: "require 'csv' " is necessary for this method
    #
    #
    #def available_currencies
    #  all_ccy=HTTParty.get 'https://api.bitcoinaverage.com/ticker/global/all'
    #  all_ccy.map!{|k,v| k}
    #  file= File.open 'currencies_file.csv','w'
    #  file.write all_ccy[0..-2].to_csv
    #  file.close
    #end
  end
end
