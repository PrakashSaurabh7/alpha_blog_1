class AddColumnsWithTimeStamps < ActiveRecord::Migration[8.0]
  def change
    add_column :tab_articles, :created_at, :datetime
    add_column :tab_articles, :updated_at, :datetime
  end
end
