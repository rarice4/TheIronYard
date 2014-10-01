class AllListingsController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    @listings = Listing.order(sort_column + " " + sort_direction)  
  end

  private
    def sort_column
      Listing.column_names.include?(params[:sort]) ? params[:sort] : "rent"
    end 
    def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
