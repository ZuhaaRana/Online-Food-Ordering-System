class Order < ApplicationRecord
    belongs_to :customer
    has_one :payment
    has_many :order_order_details
    has_many :order_details, through: :order_order_details
end
