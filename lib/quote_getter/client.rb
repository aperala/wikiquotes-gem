require "httparty"

module QuoteGetter

  class Client

    BASE_URI = "https://en.wikiquote.org/w/api.php"
    
    def quotes(page)
      headers = {"User-Agent" => "Random New York 1.0(http://randomnewyork.xyz/; randomnewyork@namecheap.com) "}
      url = (BASE_URI + "?format=json&action=parse&page=#{page}&section=1&prop=wikitext")
      content = HTTParty.get(url, headers: headers)['parse']['wikitext']['*']
      results = content.split("\n\n")

      
    end

  end
end
