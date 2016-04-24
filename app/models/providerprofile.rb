class Providerprofile < ActiveRecord::Base
  belongs_to :provider
  has_many :providerservices
  accepts_nested_attributes_for :providerservices, reject_if: :all_blank, allow_destroy: true
end
