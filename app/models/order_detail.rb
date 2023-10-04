class OrderDetail < ApplicationRecord
    belongs_to :menu_item
    has_many :order_order_details
    has_many :orders, through: :order_order_details
end
