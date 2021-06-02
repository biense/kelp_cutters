class Article < ApplicationRecord
    validates :title, presence: true, format: { with: /[a-zA-Z0-9_]+( [a-zA-Z0-9_]+)/, message: "Title contains character(s) that is (or are) not allowed" }
    validates :body, presence: true, length: { minimum: 10 }
end
