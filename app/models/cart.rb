class Cart < ApplicationRecord
    has_many :menu_item_carts
    has_many :menu_items, through: :menu_item_carts
    belongs_to :customers
end
