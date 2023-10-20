class Payment < ApplicationRecord
    belongs_to :orders
    belongs_to :payment_methods
end
