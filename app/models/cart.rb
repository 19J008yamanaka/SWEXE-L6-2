class Cart < ApplicationRecord
    has_many :cartitems
    has_one :cartitem_products,
    through: :cartitem, source: :product
end
