Gem::Specification.new do |s|
  s.name        = 'bitcoinaverage'
  s.version     = '0.0.0'
  s.date        = '2014-02-20'
  s.summary     = q%{Ruby Wrapper for the Bitcoinaverage API}
  s.description = q%{Ruby wrapper for the Bitcoinaverage API. Bitcoinaverage is an independent 'globally averaged bitcoin price' provider}
  s.authors     = ["Toni U."]
  s.files       = ["lib/bitcoinaverage.rb",
                   "lib/bitcoinaverage/ticker.rb",
                   "lib/bitcoinaverage/market_ticker.rb",
                   "lib/bitcoinaverage/global_ticker.rb",
                   "lib/bitcoinaverage/requester.rb",
                  ]
  s.homepage    =
    'http://rubygems.org/gems/bitcoinaverage'
  s.license       = 'MIT'
end
