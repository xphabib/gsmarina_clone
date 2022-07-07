class Devices
  require 'nokogiri'
  require 'open-uri'

  attr_accessor :title
  attr_accessor :name
  attr_accessor :image_url
  attr_accessor :link
  attr_accessor :brand_id

  @@root = "https://www.gsmarena.com"

  def initialize(title, name, image_url, link, brand_id)
    self.title = title
    self.name = name
    self.image_url = image_url
    self.link = @@root + '/' + link
    self.brand_id = brand_id
  end

  def self.get_all
    new_devices = []
    Brand.not_clone_devices.limit(10).each do |brand|
      pages = brand.get_all_pages
      pages.each do |page|
        devices = Nokogiri::HTML(URI.open(page))
        devices.css("div.makers li a").each do |device|
          link = device["href"]
          image_url = device.css("img").first["src"]
          title = device.css("img").first["title"]
          name = device.css("strong").first.text
          brand_id = brand.id
          new_devices << Devices.new(title, name, image_url, link, brand_id)
        end
      end
    end

    new_devices.map(&:brand_id).uniq.each do |bid|
      brand = Brand.find(bid)
      brand.update(is_brand_devices_clone: true)
    end

    new_devices
  end

  def self.details
    devices = Device.not_clone#.limit(200)
    devices.each do |device|
      device_info = Nokogiri::HTML(URI.open(device.link))
      tables = device_info.css("div#specs-list table")
      table_arr = []
      tables.each do |table|
        tabs = table.css("tr")
        tabs_array = []
        technology = ''
        tabs.each do |tab|
          technology = tab.css("th").text if tab.css("th").text.present?
          values = tab.css("td")
          key = values.css(".ttl").text
          val = values.css(".nfo").text
          tabs_array << {
            key: key, value: val
          }
        end
        table_arr << {device_id: device.id, name: technology, kvfeatures_attributes: tabs_array}
      end
      devicd_features = {is_clone: true, technologies_attributes: table_arr}
      device.update(devicd_features)
    end
  end
end