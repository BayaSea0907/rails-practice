# == Schema Information
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
require 'rails_helper'

RSpec.describe Issue, type: :model do
  describe 'イシュー登録ページ' do
    let(:category) { Category.new(name: 'A', description: nil) }

    context '新規カテゴリ名が入力された場合' do
      it '登録できること' do
        category.issues.new(title: 'タイトル', text: 'テキスト', category: category)
        expect(category.save).to eq true
      end
    end

    context '既存のカテゴリ名が入力された場合' do
      let(:category) { Category.new(name: 'A', description: nil) }

      before do
        Category.create(name: 'A')
      end

      it 'カテゴリ登録は失敗すること' do
        expect(category.save).to eq false
      end

      it 'イシューは登録できること' do
        category = Category.find_by(name: 'A')
        category.issues.new(title: 'タイトル', text: 'テキスト')
        expect(category.save).to eq true
      end
    end

    context '空の入力値がある場合' do
      let(:category) { Category.create(name: 'A', description: nil) }
      let(:issue) { category.issues.new }

      it 'タイトル未入力で失敗すること' do
        issue.update(title: nil, text: 'テキスト')
        expect(issue.errors[:title].present?).to eq true
      end

      it 'テキスト未入力で失敗すること' do
        issue.update(title: 'タイトル', text: nil)
        expect(issue.errors[:text].present?).to eq true
      end
    end
  end
end
