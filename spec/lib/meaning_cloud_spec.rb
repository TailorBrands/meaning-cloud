require 'spec_helper'

RSpec.describe MeaningCloud do
  after :each do
    MeaningCloud.configuration.key = nil
  end

  it 'has the correct default' do
    expect(MeaningCloud.configuration.key).to be nil
  end

  it 'sets the correct configuration' do
    expect(MeaningCloud.configuration.key).to be nil

    key = SecureRandom.uuid
    MeaningCloud.configure do |config|
      config.key = key
    end

    expect(MeaningCloud.configuration.key).to equal(key)
  end
end
