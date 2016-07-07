require "quotemeal/version"
require "nokogiri"
require "pry-byebug"

module Quotemeal

  def self.do_it
		resp = `curl -X POST --include 'https://andruxnet-random-famous-quotes.p.mashape.com/?cat=movies' -H 'X-Mashape-Key: Kh4Y3SbIMKmshCcDTCL5D57PnKmgp1BSXoQjsn4AvQcUdU107H' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Accept: application/json'`
    quote = resp.split('"')[3]
    movie = resp.split('"')[7]
    puts "#{quote} — #{movie}"
  end

end
