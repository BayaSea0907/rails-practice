#
# Table name: issues
#
#  id          :bigint           not null, primary key
#  text        :text(65535)      not null
#  title       :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#
# Indexes
#
#  index_issues_on_category_id  (category_id)
#
class Issue < ApplicationRecord
  belongs_to :category

  validates :title, presence: true
  validates :text, presence: true
end
