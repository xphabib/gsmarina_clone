class HomeController < ApplicationController
  def index
    # @device = Devices.details

    @devices = Device.all

  end
end
