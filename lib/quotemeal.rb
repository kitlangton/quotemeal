require "quotemeal/version"

module Quotemeal
  def do_it
    resp = `curl -X POST --include 'https://andruxnet-random-famous-quotes.p.mashape.com/?cat=movies' -H 'X-Mashape-Key: Kh4Y3SbIMKmshCcDTCL5D57PnKmgp1BSXoQjsn4AvQcUdU107H' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Accept: application/json' -s`
    quote = resp.split('"')[3]
    movie = resp.split('"')[7]
    p "#{quote} — #{movie}"
  end
end
