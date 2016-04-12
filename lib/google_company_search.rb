require "google_company_search/version"
require 'mechanize'  
require 'uri'

class GoogleCompanySearch
  def self.search(name, location = nil)
    agent = Mechanize.new
    page = agent.get('http://www.google.com/')
    google_form = page.form('f')
    google_form.q = 
      if location.nil? 
        name
      else
        "#{name} #{location}"
      end
    page = agent.submit(google_form, google_form.buttons.first)
    valid_url = nil
    page.links.each do |link|
      if link.href.to_s =~/url.q/
        str=link.href.to_s
        strList=str.split(%r{=|&}) 
        url=strList[1] 
        if is_valid_link(url)
          valid_url = url
          break
        end
      end 
    end
    valid_url
  end

  private 
  def is_valid_link(link)
    blacklist = ["wikipedia.org", "manta.com", "hoovers.com", "google.com", "techcrunch.com", "bbb.org", "bloomberg.com", "yellowpages.org", "yp.com", "yellowpages.com", "fda.gov", "yelp.com", "findlaw.com", "cnbc.com", "urbandictionary.com", "webcache.googleusercontent.com", "linkedin.com", "twitter.com", "facebook.com", "yellowpagesgoesgreen.com", "mapquest.com", "whereorg.com", "macraesbluebook.com", "bizjournals.com", "amfibi.directory"]
    return false if link.match(/^(http|https):\/\//) == nil
    uri = URI(link)   
    uri = uri.host.sub("www.", "")
    puts uri
    return false if blacklist.include?(uri)
    true
  end
end
