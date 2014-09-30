class Manifestation < ActiveRecord::Base
  has_many :orders
  belongs_to :use_license, foreign_key: 'use_license_id'
  validates_associated :use_license, allow_nil: true
end
