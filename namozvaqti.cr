require "http/client"
require "json"

city = "Tashkent"
url = "http://api.aladhan.com/v1/timingsByCity?city=#{city}&country=Uzbekistan&method=2"

response = HTTP::Client.get(url)
data = JSON.parse(response.body)
timings = data["data"]["timings"]

puts "Bomdod: #{timings["Fajr"]}"
puts "Shom: #{timings["Maghrib"]}"
