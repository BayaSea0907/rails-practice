class ChangeDatatpeColumnsOfCategories < ActiveRecord::Migration[5.0]
  def change
    change_column :categories, :name, :string, limit: 50
    # limitが256~65535の間は、text(65535)で設定されるので意味なかった
    change_column :categories, :description, :text, limit: 500
  end
end
