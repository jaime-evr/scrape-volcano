require 'open-uri'

count = 1

(0..2400).each do |i|
  number = i.to_s.rjust(4, "0")
  begin
    url = "http://webcamsdemexico.net/colima1//2015-07-12/xga/#{number}.jpg"
    puts "visiting #{url}"

    content = open(url).read

    open("images/#{count}.jpg", 'wb') do |file|
      file << content
    end

    count += 1

  rescue OpenURI::HTTPError => e
    puts e
  end
end
