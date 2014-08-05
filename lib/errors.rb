require 'errors/version'
require 'multi_json'
require 'ostruct'
require 'json'

module Errors
  class Base

    attr_accessor :data

    def initialize(code=nil)
      @code = code
      read_file
    end

    def read_file
      @data = JSON.parse(File.read("#{Dir.pwd}/lib/json/status-codes.json"))
    end

    def code
      @code
    end

    def phrase
      result['phrase']
    end

    def description
      result['description']
    end

    def spec_title
      result['spec_title']
    end

    def spec_href
      result['spec_href']
    end

    private

    def result
      raise "Out of status code bounds, 100 to 799" if (@code < 100 || @code > 800)
      result = @data.select {|d| d['code'] == @code.to_s }.first
      if result.nil?
        new_code = case @code
        when 100..199
          "1xx"
        when 200.299
          "2xx"
        when 300.399
          "3xx"
        when 400..499
          "4xx"
        when 500..599
          "5xx"
        when 700..799
          "7xx"
        end
        result = @data.select {|d| d['code'] == new_code }.first
      end
      result
    end

  end
end
