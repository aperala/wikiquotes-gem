require 'spec_helper'

describe QuoteGetter::Client do

  describe "default attributes" do

    let(:client) {QuoteGetter::Client.new}

    it "has the base url set to the Wikiquote API endpoint" do
      expect(QuoteGetter::Client::BASE_URI).to eq('https://en.wikiquote.org/w/api.php')
    end

    it "has a quotes method" do
      expect(client).to respond_to(:quotes)
    end

    it "returns a response that is an object" do
      response = client.quotes("cats")
      expect(response).to be_a(Object)
    end

 

  end

end
