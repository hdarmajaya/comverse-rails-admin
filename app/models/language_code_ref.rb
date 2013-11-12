class LanguageCodeRef < ActiveRecord::Base
  attr_accessible :is_default, :is_internal, :language_code

  self.table_name = 'language_code_ref'
  self.primary_key = 'language_code'

  validates :language_code, presence: true, length: { maximum: 6 }, uniqueness: true
  validates :is_default, presence: true, length: { maximum: 1 }
  validates :is_internal, presence: true, length: { maximum: 1 }

  # add dropdowm for is_default and is_internal
  def is_default_enum
    [ [ 'No', 0 ], ['Yes', 1] ]
  end

  def is_internal_enum
    [ [ 'No', 0 ], ['Yes', 1] ]
  end
end
