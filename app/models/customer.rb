class Customer < ApplicationRecord
    has_many :orders
    has_one :cart
    has_one :app_user, as: :user
    #belongs_to :user, polymorphic: true, inverse_of: :customer
    
end
