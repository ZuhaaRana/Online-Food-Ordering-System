class AppUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  has_secure_password
  belongs_to :user, polymorphic: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Please enter a valid email address."}
  validates :first_name, presence:true
  validates :last_name, presence:true
  validates :password_digest, presence:true
  validates :phone_no, presence:true
  validates :address, presence:true
end
