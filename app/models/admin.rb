class Admin < ApplicationRecord
    has_one :app_user, as: :user
end
