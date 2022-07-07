class Brands
  require 'nokogiri'
  require 'open-uri'

  attr_accessor :name
  attr_accessor :link

  def initialize(name, link)
    self.name = name
    self.link = link
  end

  def self.get_all
    brands = Nokogiri::HTML(URI.open('https://www.gsmarena.com/makers.php3'))
    @brands = []
    brands.css("div.st-text td a").each do |brand|
      @brands << Brands.new(brand.children.first.text, brand["href"])
    end
    @brands
  end
end