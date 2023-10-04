class Deal < ApplicationRecord
    belongs_to :manager
    has_many :deal_deal_items
    has_many :deal_items, thouugh: :deal_deal_items
end
