# == Schema Information
#
# Table name: tax_pkg_inst_id_values
#
#  tax_pkg_inst_id :integer          primary key
#  language_code   :integer
#  short_display   :string(255)
#  display_value   :string(255)
#

class TaxPkgInstIdValue < ActiveRecord::Base
  attr_accessible :display_value, :language_code, :short_display, :tax_pkg_inst_id

  self.primary_key = :tax_pkg_inst_id

  validates :tax_pkg_inst_id, presence: true, length: { maximum: 10 }, uniqueness: true
  validates :short_display, length: { maximum: 15 }
  validates :display_value, presence: true, length: { maximum: 240 }

  belongs_to :tax_pkg_inst_id_ref, primary_key: :tax_pkg_inst_id,
             foreign_key: :tax_pkg_inst_id

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
