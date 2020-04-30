# == Schema Information
#
# Table name: issues
#
#  id          :bigint           not null, primary key
#  text        :text(65535)      not null
#  title       :string(100)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#
# Indexes
#
#  index_issues_on_category_id  (category_id)
#
require 'rails_helper'

RSpec.describe Issue, type: :model do
  describe 'validation' do
    let(:category) { create(:category) }
    subject(:issue) { build(:issue, category: category) }

    context '新規カテゴリ名が入力された場合' do
      it '登録できること' do
        is_expected.to be_valid
      end
    end

    context '既存のカテゴリ名が入力された場合' do
      it 'カテゴリ登録は失敗すること' do
        create(:category)
        category = build(:category)

        expect(category).to be_invalid
      end

      it 'イシューは登録できること' do
        issue.category = Category.find_by(name: 'A')
        is_expected.to be_valid
      end
    end

    it 'タイトル未入力で失敗すること' do
      issue.title = nil
      is_expected.to be_invalid
    end

    it 'タイトル文字数制限で失敗すること' do
      issue.title= 'x' * 101
      is_expected.to be_invalid
    end

    it 'テキスト未入力で失敗すること' do
      issue.text = nil
      is_expected.to be_invalid
    end

    it 'テキスト文字数制限で失敗すること' do
      issue.text = 'x' * 1001
      is_expected.to be_invalid
    end
  end
end
