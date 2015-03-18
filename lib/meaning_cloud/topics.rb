module MeaningCloud
  # A class to hold all topic extraction related code.
  class Topics
    def self.extract_topics(options = nil)
      fail(Exception, 'Missing key') if MeaningCloud.configuration.key.nil?

      options ||= {}

      options = {
        of: :json,
        key: MeaningCloud.configuration.key,
        lang: :en,
        tt: 'ec',
        uw: 'y'
      }.merge(options)

      query = URI.encode_www_form(options)

      result = RestClient.post("#{API_BASE}?#{query}", {})
      JSON.parse(result)
    end
  end
end
