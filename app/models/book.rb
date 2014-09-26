class Book < ActiveRecord::Base
	scope :bargains, -> { where('price < 10.00') }
	scope :by, ->(author) { where('author = ?', author) }
	
	validates :title, :author, :pages, :price, presence: true
	validates :pages, 
		numericality: 
			{ only_integer: true, greater_than_or_equal_to: 0 },
				unless: "pages.blank?"
	validates :price, 
		numericality: 
			{ greater_than_or_equal_to: 0 }, 
				if: "price.present?"
end
