class MenuItem < ApplicationRecord
    belongs_to :menu_category
    belongs_to :manager
    has_one :deal_item
    has_one :order_detail
    has_many :menu_item_addons
    has_many :addons, through: :menu_item_addons
    has_many :menu_item_carts
    has_many :carts, through: :menu_item_carts
end
