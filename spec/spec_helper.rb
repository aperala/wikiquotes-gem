$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'quote_getter'

describe QuoteGetter::Helper do
  
  let(:client) {QuoteGetter::Client.new}
  let(:page) {'cats'}
  let(:response) {client.quotes("cats")}

  describe :random_quote do

    it "returns a string from the response array" do
      expect(client.random_quote(response)).to be_a(String)
    end

  end

  describe :clean do

    it "cleans extraneous characters from the quotation" do
      quote = client.random_quote(response)
      expect(client.clean(quote)).not_to include("*")
    end

  end

end