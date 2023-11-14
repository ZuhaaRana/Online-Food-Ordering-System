class Admin < ApplicationRecord
    # has_one :app_user, as: :user
    # belongs_to :user,
    # class_name: 'AppUser', foreign_key: 'app_user_id', polymorphic: true
    has_one :app_user, as: :user
end 
