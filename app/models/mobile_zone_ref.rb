class MobileZoneRef < ActiveRecord::Base
  attr_accessible :is_default, :is_internal, :mobile_zone, :zone_parent

  self.table_name = :mobile_zone_ref
  self.primary_key = :mobile_zone

  validates :mobile_zone, presence: true, length: { maximum: 10 }, uniqueness: true
  validates :zone_parent, presence: true, length: { maximum: 10 }
  validates :is_default, presence: true, length: { maximum: 1 }
  validates :is_internal, presence: true, length: { maximum: 1 }

  has_many :usage_points, primary_key: :mobile_zone, foreign_key: :mobile_zone,
           dependent: :destroy

  def is_default_enum
    [ ['No', 0], ['Yes', 1] ]
  end

  def is_internal_enum
    [ ['No', 0], ['Yes', 1] ]
  end

  rails_admin do
    object_label_method :mobile_zone
  end
end
