class HomeController < ApplicationController
  before_action :set_cep_data
  #include HTTParty
  #base_uri 'https://ws.apicep.com/cep'

  #def index
    #@teste = CepSearshed.new
    
 # end
 
  def show
    cep = params[:code]    
    #@search = HTTParty.get "https://ws.apicep.com/cep/#{cep}.json"   
    @search = @cep_searched.show(cep)
 
  end

  private 

  def set_cep_data
    @cep_searched = CepSearched.new
  end
end
