The Meaning Cloud Ruby API Wrapper
===================

A Ruby API wrapper for [Meaning Cloud](https://www.meaningcloud.com/) [API's](https://www.meaningcloud.com/developer/getting-started)

[![Gem Version](https://badge.fury.io/rb/meaning-cloud.svg)](http://badge.fury.io/rb/meaning-cloud)[![Dependency Status](https://gemnasium.com/TailorBrands/meaning-cloud.svg)](https://gemnasium.com/TailorBrands/meaning-cloud)
[![Circle CI](https://circleci.com/gh/TailorBrands/meaning-cloud/tree/master.svg?style=svg)](https://circleci.com/gh/TailorBrands/meaning-cloud/tree/master)  [![Code Climate](https://codeclimate.com/github/TailorBrands/meaning-cloud/badges/gpa.svg)](https://codeclimate.com/github/TailorBrands/meaning-cloud)  [![Test Coverage](https://codeclimate.com/github/TailorBrands/meaning-cloud/badges/coverage.svg)](https://codeclimate.com/github/TailorBrands/meaning-cloud)

```rb
gem "meaning-cloud", "~> 0.1.2"
```

## Missing

Current version only wraps the Topics extraction API's and is focused on specific usage. Feel free to send a pull request with more API's wrapped!

## Usage

You need a valid key to use the Gem, you can get it by signing up [here](https://www.meaningcloud.com/developer/getting-started)

*Raises Exception on missing key*

### Configuration
You can use an initializer for example if you're on Rails.
```rb
# initializers/meaning_cloud.rb
MeaningCloud.configure do |config|
  config.key = ENV['MEANING_CLOUD_KEY']
end
```

### Extract by text

```rb
result = MeaningCloud::Topics.extract_topics(txt: 'The most amazing text in the world') # Returns a hash of the parsed JSON result.
```
Source [source](https://www.meaningcloud.com/developer/topics-extraction/doc/1.2/examples)

## Disclaimer

This is completely unofficial and is not related to Meaning Cloud in any way.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## About Tailor Brands
[Check us out!](https://www.tailorbrands.com)
