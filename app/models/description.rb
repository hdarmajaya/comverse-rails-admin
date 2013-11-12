class Description < ActiveRecord::Base
  attr_accessible :description_code, :description_group, :description_text, 
                  :language_code, :short_description_text

  self.primary_key = :description_code

  #validate :init_default

  validates :description_code, presence: true, length: { maximum: 10 }, uniqueness: true
  validates :description_group, presence: true, length: { maximum: 6 }
  validates :description_text, presence: true, length: { maximum: 240 }
  validates :short_description_text, length: { maximum: 15 }

  def init_default
    # set the default value to 1 for English
    self.language_code = 1
  end

  rails_admin do
    exclude_fields :language_code
    field :language_code, :hidden do
      default_value 1   # set to English
    end
  end
end
