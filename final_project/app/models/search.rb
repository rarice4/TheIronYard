class Search < ActiveRecord::Base
def listings
  find_listings
end

private

def find_listings
  p 'Hi'
  listings = Listing.order(:rent) 
  listings = listings.where("listings.#{self.category_id} LIKE ?", "%#{keywords}%") if keywords.present?
  listings = listings.where("listings.rent >= ?") if minimum_price.present?
  listings = listings.where("listings.rent <= ?") if maximum_price.present?
  listings
end
end

