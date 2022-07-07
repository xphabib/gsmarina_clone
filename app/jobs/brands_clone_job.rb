class BrandsCloneJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Brands.get_all.each do |brand|
      new_brand = Brand.find_or_initialize_by(name: brand.name, link: brand.link)
      new_brand.save!
    end

  end
end
