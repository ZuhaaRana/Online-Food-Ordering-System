class AppUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :user, polymorphic: true
  # has_one :customer, dependent: :destroy, inverse_of: :app_user
  # accepts_nested_attributes_for :customer

  # has_one :admin, as: :user
  # has_one :manager, as: :user
  # has_one :customer, as: :user

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Please enter a valid email address."}
  validates :first_name, presence:true
  validates :last_name, presence:true
  validates :password, presence:true
  validates :phone_no, presence:true
  validates :address, presence:true
  
end
