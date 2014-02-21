# Ruby wrapper for the BitcoinAverage API

[![Coverage Status](https://coveralls.io/repos/sferik/mtgox/badge.png?branch=master)][coveralls]

[coveralls]: https://coveralls.io/r/git-toni/bitcoinaverage

Bitcoinaverage is an independent 'globally averaged bitcoin price' provider. They provide a **Global** price,
based on the volume and price of BTC in all currencies, together with a **Market** price, which only takes into account
the volume of BTC directly exchangeable through that specific currency.
For more information on the methods BitcoinAverage uses to calculate the price, please refer to their website, in
particular [https://bitcoinaverage.com/explain.htm][this page].

## Important first note
The development of this gem has been *really* inspired by Erik Michaels-Ober's great [https://github.com/sferik/mtgox][mtgox] gem ( specially this README ;) ).

## Installation
    gem install bitcoinaverage


## Documentation
[][documentation] Todo

[documentation]: 

## Usage 
```ruby
require 'rubygems'
require 'bitcoinaverage'

# Obtain the BitcoinAverage's global price
BitcoinAverage.global

# Obtain the BitcoinAverage's market price
BitcoinAverage.market

# Obtain the BitcoinAverage's global price in EUR
BitcoinAverage.global 'EUR'

# Obtain the BitcoinAverage's market price in GBP
BitcoinAverage.market 'GBP'

# Obtain the specific fields of BitcoinAverage's global price
BitcoinAverage.global.last
BitcoinAverage.global.bid
BitcoinAverage.global.ask
BitcoinAverage.global.volume_btc
BitcoinAverage.global.volume_percent
```

## Supported Ruby Versions
This library aims to support and is [tested against][travis] the following Ruby
implementations:

* Ruby 1.9.2
* Ruby 1.9.3
* Ruby 2.0.0
* Ruby 2.1.0

If something doesn't work on one of these interpreters, it's a bug.

This library may inadvertently work (or seem to work) on other Ruby
implementations, however support will only be provided for the versions listed
above.

If you would like this library to support another Ruby version, you may
volunteer to be a maintainer. Being a maintainer entails making sure all tests
run and pass on that implementation. When something breaks on your
implementation, you will be responsible for providing patches in a timely
fashion. If critical issues for a particular implementation exist at the time
of a major release, support for that Ruby version may be dropped.

## Copyright
Copyright (c) 2011-2013 Erik Michaels-Ober. See [LICENSE][] for details.

[
