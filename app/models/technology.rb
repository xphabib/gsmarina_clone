class Technology < ApplicationRecord
  belongs_to :device
  has_many :kvfeatures, dependent: :delete_all

  accepts_nested_attributes_for :kvfeatures, allow_destroy: true #, update_only: true
end
