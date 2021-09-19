class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tasks, dependent: :destroy
  has_many :bringings, dependent: :destroy
  has_many :subjects, dependent: :destroy

  validates :username, :email,  presence: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i } #メールアドレスか?
end
