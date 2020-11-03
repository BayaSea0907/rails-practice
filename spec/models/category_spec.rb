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
  describe 'validation' do
    subject(:category) { create(:category) }

    it '更新に成功すること' do
      category.description = '説明文'
      is_expected.to be_valid
    end

    it 'カテゴリ名の文字数制限で更新に失敗すること' do
      category.name = 'x' * 51
      is_expected.to be_invalid
    end

    it '説明文の文字数制限で更新に失敗すること' do
      category.description = 'x' * 501
      is_expected.to be_invalid
    end
  end
end
