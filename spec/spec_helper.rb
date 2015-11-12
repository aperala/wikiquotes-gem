$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'quote_getter'

describe QuoteGetter::Helper do
  
  let(:client) {QuoteGetter::Client.new}
  let(:page) {'cats'}

  describe :random_quote do

    it "returns a random quote from the response array" do
      response = client.quotes("cats")
      expect(client.random_quote(response)).to be_a(String)
    end

  end

end