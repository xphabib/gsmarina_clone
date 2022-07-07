class Device < ApplicationRecord
  require 'open-uri'

  belongs_to :brand
  has_one :network
  has_one :launch
  has_one :body
  has_one :display
  has_one :platform
  has_one :memory
  has_one :main_camera
  has_one :selfie_camera
  has_one :sound
  has_one :comm
  has_one :feature
  has_one :battery
  has_one :misc
  has_many :technologies, dependent: :delete_all
  has_one_attached :image

  # before_create :grab_image

  accepts_nested_attributes_for :technologies, allow_destroy: true #, update_only: true


  # def grab_image
  #   downloaded_image = URI.parse(self.image_url).open
  #   file_name = self.image_url[/[^\/:]+\.(?i:jpeg|jpg|png|gif)/]
  #   image.attach(io: downloaded_image, filename: file_name)
  # end

  scope :not_clone, -> {where(is_clone: false)}
  scope :cloned, -> {where(is_clone: true)}
end
