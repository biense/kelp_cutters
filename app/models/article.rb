class Article < ApplicationRecord
    validates :title, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    validates :body, presence: true, length: { minimum: 10 }
end
