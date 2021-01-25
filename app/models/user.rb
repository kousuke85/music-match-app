class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweets
  has_many :comments
  has_one_attached :avatar
  has_many :posts
  has_many :messages, dependent: :destroy
  has_many :entries, dependent: :destroy
end
