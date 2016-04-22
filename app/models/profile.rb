class Profile < ActiveRecord::Base
  belongs_to :customer
  has_many :services
  accepts_nested_attributes_for :services, reject_if: :all_blank, allow_destroy: true
end
