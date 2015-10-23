require "httparty"

module QuoteGetter

  class Client

    BASE_URI = "https://en.wikiquote.org/w/api.php"
    
    def quotes(page)
      response = HTTParty.get(BASE_URI + "?format=json&action=parse&page=#{page}&prop=text")
      response['parse']['text']['*']
    end

  end
end
