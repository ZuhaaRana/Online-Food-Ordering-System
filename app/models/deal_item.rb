class DealItem < ApplicationRecord
    belongs_to :menu_item
    has_many :deal_deal_items
    has_many :deal, thouugh: :deal_deal_items
end
