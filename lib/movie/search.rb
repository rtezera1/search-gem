require "movie/search/version"
require 'httparty'
require 'pry'
require 'json'
class Search
  def initialize titles
    @titles = titles
  end
  def OMDBapi
    # object where all movies and year released are stored
    movies = {}
    # if tities isn't in array format throw exception
    if @titles.kind_of?(Array) == true
      # loop through each title and make a request
      @titles.each do |title|
        url = 'http://www.omdbapi.com/?t=' + title + '&y=&plot=short&r=json'
        response = HTTParty.get(url)
        responseObject = JSON.parse(response)
        if responseObject["Response"] == "False"
          # if the title isn't found, throw an exception
          raise responseObject["Error"]
        else 
          # make a hash object
          title = responseObject['Title']
          year = responseObject['Year']
          movies.store(title, year)
        end
      end
      return movies
    else 
      # if the arguement isn't in array format throw an exception
      raise  StandardError, 'Make sure the arguement is in Array format.'
    end
  end
end


