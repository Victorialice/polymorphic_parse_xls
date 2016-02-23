require "open-uri"
open ("http://search.suning.com/%E8%BF%9E%E8%A1%A3%E8%A3%99/cityId=%7BcityId%7D") do |io|
  puts io.read
end
