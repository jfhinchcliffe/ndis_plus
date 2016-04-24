class Providerprofile < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  belongs_to :provider
  has_many :providerservices
  accepts_nested_attributes_for :providerservices, reject_if: :all_blank, allow_destroy: true
end
