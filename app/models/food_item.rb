class FoodItem < ActiveRecord::Base
	has_many :orders, dependent: :destroy

	def image_url_or_auto
		if image_url.present?
			image_url
		else
			"http://loremflickr.com/320/240/#{name}"
		end
	end

	def self.filter_by_section(section, order_by)
		where(section: section).order(order_by)
	end
	
	def self.search(search)
	  where("(name ILIKE ?) OR (description ILIKE ?)", "%#{search}%", "%#{search}%")
	end






end
