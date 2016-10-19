class Product < ActiveRecord::Base
	belongs_to :category
	validates :name, :description, :pricing, presence:true
	validates :name, :description, :pricing, length: {in: 2..20}
	validates :name, uniqueness: true
end
