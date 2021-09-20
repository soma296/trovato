class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tasks, dependent: :destroy
  has_many :bringings, dependent: :destroy
  has_many :subjects, dependent: :destroy
  has_many :sub1jects, dependent: :destroy
  has_many :sub2jects, dependent: :destroy
  has_many :sub3jects, dependent: :destroy
  has_many :sub4jects, dependent: :destroy
  has_many :sub5jects, dependent: :destroy
  has_many :sub6jects, dependent: :destroy
  has_many :sub7jects, dependent: :destroy
  has_many :sub8jects, dependent: :destroy
  has_many :sub9jects, dependent: :destroy
  has_many :sub10jects, dependent: :destroy
  has_many :sub11jects, dependent: :destroy
  has_many :sub12jects, dependent: :destroy
  has_many :sub13jects, dependent: :destroy
  has_many :sub14jects, dependent: :destroy
  has_many :sub15jects, dependent: :destroy
  has_many :sub16jects, dependent: :destroy
  has_many :sub17jects, dependent: :destroy
  has_many :sub18jects, dependent: :destroy
  has_many :sub19jects, dependent: :destroy
  has_many :sub20jects, dependent: :destroy
  has_many :sub21jects, dependent: :destroy
  has_many :sub22jects, dependent: :destroy
  has_many :sub23jects, dependent: :destroy
  has_many :sub24jects, dependent: :destroy
  has_many :sub25jects, dependent: :destroy
  has_many :sub26jects, dependent: :destroy
  has_many :sub27jects, dependent: :destroy
  has_many :sub28jects, dependent: :destroy
  has_many :sub29jects, dependent: :destroy

  validates :username, :email,  presence: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i } #メールアドレスか?
end
