class MobileZoneRef < ActiveRecord::Base
  attr_accessible :is_default, :is_internal, :mobile_zone, :zone_parent

  self.table_name = :mobile_zone_ref
  self.primary_key = :mobile_zone

  validates :mobile_zone, presence: true, length: { maximum: 10 }, uniqueness: true
end
