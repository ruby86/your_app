module GwstatusHelper

require 'nokogiri'
require 'open-uri'

	def now_in_game
		doc = Nokogiri::HTML(open("http://www.ganjawars.ru/index.php?frontpage"))
		doc.css('.black12 .red14b')[0].text
	end

	def last_7_day
		doc = Nokogiri::HTML(open("http://www.ganjawars.ru/index.php?frontpage"))
		doc.css('.black12 .red14b')[1].text
	end

	def active_fight
		doc = Nokogiri::HTML(open("http://www.ganjawars.ru/index.php?frontpage"))
		doc.css('.black12 .red14b')[2].text
	end

	def wait_fight
		doc = Nokogiri::HTML(open("http://www.ganjawars.ru/index.php?frontpage"))
		doc.css('.black12 .red14b')[3].text
	end
end


