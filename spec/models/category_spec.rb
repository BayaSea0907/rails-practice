# == Schema Information
#
# Table name: categories
#
#  id          :bigint           not null, primary key
#  description :text(65535)
#  name        :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_categories_on_name  (name) UNIQUE
#
require 'rails_helper'

RSpec.describe Category, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
