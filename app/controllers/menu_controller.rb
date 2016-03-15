class MenuController < ApplicationController
  def index
  	@sections = %w(Breakfast Lunch Dinner Supper)
  	@food_items = FoodItem.filter_by_section(params[:section], params[:order_by])
	@sorting_options = [{
	"name": "name asc",
	"label": "Alphabetical"
	}, {
	"name": "price asc",
	"label": "Price low to heigh"
	}, {
	"name": "price desc",
	"label": "Price high to low"
	}]
  end
end
