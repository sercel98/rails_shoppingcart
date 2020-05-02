class CategoriesController < ApplicationController
    def index
        @categories = Category.joins(:products).select('categories.*, count(products.id) as product_count').group('categories.id').order(:title) 
    end
end
