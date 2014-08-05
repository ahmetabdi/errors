require 'rspec'
require 'spec_helper'

describe Errors::Base do

  describe "For an error that exists" do

    before(:each) do
      @error = Errors::Base.new(404)
    end

    it "should return a code" do
      expect(@error.code).to equal(404)
    end

    it "should return a phrase" do
      expect(@error.phrase).to eq("Not Found")
    end

    it "should return a description" do
      expect(@error.description).to eq("\"indicates that the origin server did not find a current representation for the target resource or is not willing to disclose that one exists.\"")
    end

    it "should return a spec_title" do
      expect(@error.spec_title).to eq("RFC7231#6.5.4")
    end

    it "should return a spec_href" do
      expect(@error.spec_href).to eq("http://tools.ietf.org/html/rfc7231#section-6.5.4")
    end

  end

  describe "For an error does not exist but is within the ranges" do

    before(:each) do
      @error = Errors::Base.new(105)
    end

    it "should return a code" do
      expect(@error.code).to equal(105)
    end

    it "should return a phrase" do
      expect(@error.phrase).to eq("**Informational**")
    end

    it "should return a description" do
      expect(@error.description).to eq("\"indicates an interim response for communicating connection status or request progress prior to completing the requested action and sending a final response.\" ~ [sure](http://www.urbandictionary.com/define.php?term=sure)")
    end

    it "should return a spec_title" do
      expect(@error.spec_title).to eq("RFC7231#6.2")
    end

    it "should return a spec_href" do
      expect(@error.spec_href).to eq("http://tools.ietf.org/html/rfc7231#section-6.2")
    end

  end

end