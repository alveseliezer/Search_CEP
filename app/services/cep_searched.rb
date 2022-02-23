class CepSearched 

    include HTTParty
    base_uri 'https://ws.apicep.com/cep'

    def initialize
        @options = {}
    end

    def show(cep)
        self.class.get('/'"#{cep}.json", @options)
    end
end