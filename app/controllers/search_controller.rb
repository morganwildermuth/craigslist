class SearchController < ApplicationController

  def index
    mechanize = Mechanize.new
    mission = mechanize.get("http://sfbay.craigslist.org/search/hhh?query=%22mission+district%22&sale_date=-")
    ashby = mechanize.get("http://sfbay.craigslist.org/search/hhh?query=ashby&sale_date=-")
    @ashby_links = ashby.links_with(:href => %r{^/eby/})
    @mission_links = mission.links_with(:href => %r{^/eby/})
  end
end