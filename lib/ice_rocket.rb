require "ice_rocket/version"
require "httparty"

module IceRocket
  class Search
    include HTTParty
    #debug_output $stderr

    base_uri 'www.icerocket.com'
    default_params :sourceid => 'bam', :api => '1'

    attr_accessor :options

    def initialize(search_term, options={})
      opts = {
        :q   => search_term,
        :dh  => options[:dh]  || options[:date_high],
        :dl  => options[:dl]  || options[:date_low],
        :lng => options[:lng] || options[:language],
        :n   => options[:n]   || options[:per_page] || 10
      }

      opts[:dh] = opts[:dh].strftime("%m/%d/%Y") if opts[:dh]
      opts[:dl] = opts[:dl].strftime("%m/%d/%Y") if opts[:dl]

      self.options = opts
    end

    def fetch(options={})
      self.class.get('/search', params(options))
    end

    def params(options={})
      { :query => self.options.merge( :p => options[:p] || options[:page] || 1 ) }
    end
  end
end

