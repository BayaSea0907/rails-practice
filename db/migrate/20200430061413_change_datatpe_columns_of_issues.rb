class ChangeDatatpeColumnsOfIssues < ActiveRecord::Migration[6.0]
  def change
    change_column :issues, :title, :string, limit: 100
    # limitが256~65535の間は、text(65535)で設定されるので意味なかった
    change_column :issues, :text, :text, limit: 1000
  end
end
