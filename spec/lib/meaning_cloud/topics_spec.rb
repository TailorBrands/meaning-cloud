require 'spec_helper'

RSpec.describe MeaningCloud::Topics do
  after :each do
    MeaningCloud.configuration.key = nil
  end

  it 'has a default topic types configuration' do
    expect(MeaningCloud.configuration.topic_types).not_to be_nil
  end

  it 'has a default language configuration' do
    expect(MeaningCloud.configuration.language).not_to be_nil
  end

  it 'raises an error on empty key' do
    MeaningCloud.configuration.key = nil
    expect { MeaningCloud::Topics.extract_topics(txt: Faker::Company.bs) }.to raise_error(Exception)
  end

  it 'sends a proper request' do
    result = "{\"status\":{\"code\":\"0\",\"msg\":\"OK\",\"credits\":\"1\",\"remaining_credits\":\"39993\"},\"entity_list\":[],\"concept_list\":[]}"
    key = SecureRandom.uuid
    MeaningCloud.configuration.key = key

    txt = Faker::Company.bs

    expect(RestClient).to receive(
      :post
    ).with(
      "https://api.meaningcloud.com/topics-2.0?of=json&key=#{key}&lang=en&tt=ec&uw=y&txt=#{txt.gsub(' ', '+')}", {}
    ).and_return(
      result
    )

    expect(MeaningCloud::Topics.extract_topics(txt: txt)).to eq(JSON.parse(result))
  end
end
