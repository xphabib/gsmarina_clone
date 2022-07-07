class BrandsController < ApplicationController
  before_action :set_brand, except: :index

  def index
    @brands = Brand.all
  end

  def show
    @devices = @brand.devices.cloned
  end

  private
  def set_brand
    @brand = Brand.find(params[:id])
  end
end
