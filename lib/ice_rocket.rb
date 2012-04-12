require "ice_rocket/version"

module IceRocket
  class Search
    include HTTParty

    # format :xml
    base_uri 'blogs.icerocket.com'
    default_params :sourceid => 'bam', :rss => '1', :api => '1'

    attr_accessor :search_phrase, :results

    def initialize(search_term)
      self.search_phrase  = search_term
      self.results = []
    end

    def fetch(page=1)
      # URI.escape()
      options = { :query => { :q   => self.search_phrase,
                              :n   => 10 } }
                              # :p   => page,
                              # :dl  => (Date.today - 2),
                              # :dh  => (Date.today - 1) } )
      self.results = self.class.get('/search', options)
    end
  end
end

