require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/List_of_Shakespearean_characters_(A%E2%80%93K)"))
names_csv = []
doc.css('ul li > b').each do |name|
  if name.content[0] == name.content[0].upcase
    content = name.content.gsub(/\(\d*\)/, '').strip
    
    if content != nil && content.include?("'") == false
      names_csv << content
    end
  end
  names_csv.delete("")
end

doc1 = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/List_of_Shakespearean_characters:_L-Z"))
doc1.css('ul li > b').each do |name|
  if name.content[0] == name.content[0].upcase
    content = name.content.gsub(/\(\d*\)/, '').strip
    
    if content != nil && content.include?("'") == false
      names_csv << content
    end
  end
  names_csv.delete("")
end
file_csv = names_csv.uniq.join(",")
File.open('names.txt', 'w'){ |file| file.write(file_csv)}
