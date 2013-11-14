# == Schema Information
#
# Table name: point_class_values
#
#  point_class   :integer          primary key
#  language_code :integer
#  short_display :string(255)
#  display_value :string(255)
#

class PointClassValue < ActiveRecord::Base
  attr_accessible :display_value, :language_code, :point_class, :short_display

  self.primary_key = :point_class

  validates :point_class, presence: true, length: { maximum: 10 },
            uniqueness: true
  validates :display_value, presence: true, length: { maximum: 240 }
  validates :short_display, length: { maximum: 15 }

  belongs_to :point_class_ref, primary_key: :point_class, foreign_key: :point_class

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
