class Manager < ApplicationRecord
    belongs_to :restaurant
    has_many :menu_items
    has_many :deals
    has_one :app_user, as: :user 
end
