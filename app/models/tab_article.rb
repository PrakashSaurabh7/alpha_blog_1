class TabArticle < ApplicationRecord
  validates :tab_title, presence: true, length: { minimum: 7, maximum: 112}
  validates :tab_description, presence: true, length: { minimum: 10, maximum: 250}
end
