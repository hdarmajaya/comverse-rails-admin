# == Schema Information
#
# Table name: descriptions
#
#  description_code       :integer          primary key
#  language_code          :integer
#  description_group      :integer
#  description_text       :string(255)
#  short_description_text :string(255)
#

class Description < ActiveRecord::Base
  attr_accessible :description_code, :description_group, :description_text, 
                  :language_code, :short_description_text

  self.primary_key = :description_code

  validates :description_code, presence: true, length: { maximum: 10 }, 
            uniqueness: true
  validates :description_group, presence: true, length: { maximum: 6 }
  validates :description_text, presence: true, length: { maximum: 240 }
  validates :short_description_text, length: { maximum: 15 }

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
