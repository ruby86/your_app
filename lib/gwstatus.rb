class Gwcontent

require 'nokogiri'
require 'open-uri'

	def get_block(url)
		doc = Nokogiri::HTML(open(url))
		doc.css('.black12 .red14b')[3].text
	end

end

gwc1 = Gwcontent.new
puts gwc1.get_block('http://www.ganjawars.ru/index.php?frontpage')
