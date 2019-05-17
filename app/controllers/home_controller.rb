class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'
    
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @url = URI(@url)
    @response = Net::HTTP.get(@url)
    @coins = JSON.parse(@response)
    @coins_array = ["BTC", "XRP", "ETH", "LSK", "STEEM"]
  end
  
  def about
  end
  
  def search
    @symbol = params[:sym]
  end
  
end
