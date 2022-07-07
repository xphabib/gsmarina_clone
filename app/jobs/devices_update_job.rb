class DevicesUpdateJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Devices.details
  end
end
