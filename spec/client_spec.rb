require 'spec_helper'

describe QuoteGetter::Client do

  before(:all) do
    @client = QuoteGetter::Client.new
  end

  describe "default attributes" do

    it "has the base url set to the Wikiquote API endpoint" do
      expect(QuoteGetter::Client::BASE_URI).to eq('https://en.wikiquote.org/w/api.php')
    end

    it "has a quotes method" do
      expect(@client).to respond_to(:quotes)
    end

  end

end
