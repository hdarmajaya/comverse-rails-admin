class UsagePointsText < ActiveRecord::Base
  attr_accessible :display_value, :language_code, :point_id

  self.table_name = 'usage_points_text'
  self.primary_key = :point_id

  validates :point_id, presence: true, length: { maximum: 10 },
            uniqueness: true
  validates :display_value, presence: true, length: { maximum: 240 }

  rails_admin do
    exclude_fields :language_code

    # set default value for language_code on edit and new
    edit do
      field :language_code, :hidden do
        default_value 1   # set to English
      end
    end
  end
end
