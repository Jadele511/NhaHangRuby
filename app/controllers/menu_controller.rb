class MenuController < ApplicationController
  def index
  	@sections = %w(Breakfast Lunch Dinner Super)
  	@food_items = FoodItem.filter_by_section(params[:section])
  end
end
