task :test => :environment do

  require "open-uri"
  require "nokogiri"
  url = "http://search.suning.com/%E8%BF%9E%E8%A1%A3%E8%A3%99/cityId=%7BcityId%7D"

  doc = Nokogiri::HTML(open(url))

  nodes = doc.css('li.item')

  nodes2 = doc.parse('li.item') 

  nodes.each do |node|
    price = node.css("div.i-price p.price strong").text
    name = node.css("div.i-name a").text
    image_url = node.css("div.i-pic a img")[0]["src"]

    puts "****************************"
    puts name
    puts name.class
    puts "****************************"
    puts price
    puts price.class
    puts "****************************"
    puts image_url
    puts image_url.class
    puts "****************************"
  end

end
