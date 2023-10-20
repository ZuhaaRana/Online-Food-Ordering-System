class Addon < ApplicationRecord
    has_many :menu_item_addons
    has_many :menu_items, through: :menu_item_addons
end
