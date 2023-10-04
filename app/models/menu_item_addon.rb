class MenuItemAddon < ApplicationRecord
  belongs_to :menu_item
  belongs_to :addon
end
