class CreateIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :issues do |t|
      t.string :title, null: false
      t.text :text, null: false
      t.references :category, null: false

      t.timestamps
    end
  end
end
