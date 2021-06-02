class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  
  validates :name, presence: false, uniqueness: false, format: { with: /([A-Za-z ])\w/, message: "Name contains character(s) that is (or are) not allowed" }
end
