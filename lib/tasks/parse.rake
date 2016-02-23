task :parse => :environment do

  require "open-uri"
  require "nokogiri"
  url = "http://search.suning.com/%E8%BF%9E%E8%A1%A3%E8%A3%99/cityId=%7BcityId%7D"

  doc = Nokogiri::HTML(open(url))

  nodes = doc.css('li.item')

  nodes2 = doc.parse('li.item') 

  nodes.each do |node|
    node = nodes.first
    price = node.css("div.i-price p strong").text

    #price = node.css("p.price strong").text

    name = node.css("div.i-name a").text
    #image_url = node.css("div.i-pic img")[0]["src2"]

    image_url = node.css("a.proImg img")[0]["src2"]

    com = Commodity.find_by_name(name)

    if com.blank?
      Commodity.create(
        price: price,
        name: name,
        img_url: image_url
      )
    elsif com.price.blank?
      com.update_attributes(
        price: price,
        img_url: image_url
      )
    elsif com.img_url.blank?
      com.update_attributes(
        img_url: image_url
      )
    end
  end

  #end

end
