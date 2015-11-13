module QuoteGetter

  module Helper

    # selects a random item from HTTP response array
    # strips excess chars and returns a quotation and attribution
    def random_quote(response)
      quotes = response.select {|q| q.start_with?("*")}
      return response.sample
    end

    def clean(quote)
      quote = quote.gsub(/[\*'\[\]]/, "")
      last_comma = quote.rindex(',')
      quote = quote.slice(0..(last_comma-1))
    end
  end

end


# str.slice(0..foo-1)