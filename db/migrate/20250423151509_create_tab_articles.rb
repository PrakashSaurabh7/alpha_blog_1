class CreateTabArticles < ActiveRecord::Migration[8.0]
  def change
    create_table :tab_articles do |t|
      t.string :tab_title
      t.text :tab_description
    end
  end
end
