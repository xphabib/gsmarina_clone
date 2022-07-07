class CloneDevicesJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Devices.get_all.each do |device|
      new_device = Device.find_or_initialize_by(
        title: device.title,
        name: device.name,
        link: device.link,
        brand_id: device.brand_id,
        image_url: device.image_url
      )
      new_device.save
    end
  end
end
