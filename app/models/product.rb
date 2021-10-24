class Product < ApplicationRecord
    has_one :cartitem
    has_one :cartitem_cart,
    through: :cartitem, source: :cart
end
