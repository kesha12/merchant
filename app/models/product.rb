class Product < ActiveRecord::Base

has_many :order_item
has_attached_file :image
validates_numericality_of :price
validates :stock, numericality: { only_integer: true , greater_than_or_equal_to: 0}

validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

end
