class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :article_histories, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
