module QuoteGetter

  module Helper

    # selects a random item from HTTP response array
    # strips excess chars and returns a quotation and attribution
    def random_quote(response)
      quotes = response.select {|q| q.start_with?("*")}
      return quotes.sample.gsub(/[\*'\[\]"]/, "").strip
    end


  end

end

