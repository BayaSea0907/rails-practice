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
class Category < ApplicationRecord
  has_many :issues, dependent: :destroy

  validates :name, uniqueness: true, presence: true, length: { maximum: 50 }
  validates :description, length: { maximum: 500 }
end
