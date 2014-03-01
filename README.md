# Ruby wrapper for the BitcoinAverage API

[![Gem Version](https://badge.fury.io/rb/bitcoinaverage.png)](http://badge.fury.io/rb/bitcoinaverage)
[![Coverage Status](https://coveralls.io/repos/git-toni/bitcoinaverage/badge.png)](https://coveralls.io/r/git-toni/bitcoinaverage)
[![Build Status](https://travis-ci.org/git-toni/bitcoinaverage.png?branch=master)](https://travis-ci.org/git-toni/bitcoinaverage)


Bitcoinaverage is an independent 'globally averaged bitcoin price' provider. They provide on one hand a **Global** price,
which is based on the volume and price of BTC in all currencies. And on the other hand they provide a **Market** price, which only takes into account
the volume of BTC directly exchangeable using the chosen specific currency.
For more information on the methods BitcoinAverage uses to calculate the price, please refer to their website, in
particular [this page](https://bitcoinaverage.com/explain.htm).

## Important first note
The development of this gem has been *deeply* inspired by Erik Michaels-Ober's great [mtgox](https://github.com/sferik/mtgox) gem ( specially this README ;) ).

## Installation
    gem install bitcoinaverage


## Documentation
TODO

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

## Tested Ruby Versions
This library aims to support and is [tested against](https://travis-ci.org/git-toni/bitcoinaverage) the following Ruby
implementations:

* ruby-1.9.3-p374
* ruby-2.0.0-p353
* ruby-2.1.0

## Contributing
In the spirit of [free software](http://www.fsf.org/licensing/essays/free-sw.html), **everyone** is encouraged to help improve this project.

Here are some ways *you* can contribute:

* by using alpha, beta, and prerelease versions
* by reporting bugs
* by suggesting new features
* by writing or editing documentation
* by writing specifications
* by writing code (**no patch is too small**: fix typos, add comments, clean up inconsistent whitespace)
* by refactoring code
* by closing [issues](http://github.com/Instagram/instagram-ruby-gem/issues)
* by reviewing patches

## Copyright
Copyright (c) 2014 Toni Urcola. See [LICENSE](https://github.com/git-toni/bitcoinaverage/LICENSE) for details.
