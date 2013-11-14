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

require 'test_helper'

class DescriptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
