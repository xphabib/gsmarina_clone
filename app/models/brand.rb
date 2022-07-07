class Brand < ApplicationRecord
  has_many :devices

  scope :not_clone_devices, -> {where(is_brand_devices_clone: false)}

  def get_all_pages
    root = "https://www.gsmarena.com"
    brand = self
    link = root + '/' + brand.link
    brands = Nokogiri::HTML(URI.open(link))
    pages = [link]
    brands.css("div.nav-pages a").each do |brand|
      pages << root + '/' + brand["href"]
    end
    pages
  end
end
