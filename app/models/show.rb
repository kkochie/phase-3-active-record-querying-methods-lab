class Show < ActiveRecord::Base
    #method should return the highest value in the ratings column
    def self.highest_rating
        self.maximum(:rating)
    end

    #returns the show with the highest rating
    def self.most_popular_show
        self.where("rating = ?", self.highest_rating).first
    end

    #returns the lowest value in the ratings column
    def self.lowest_rating
        self.minimum(:rating)
    end

    #returns the show with the lowest rating
    def self.least_popular_show
        self.where("rating = ?", self.lowest_rating).first
    end

    #returns the sum of all the ratings
    def self.ratings_sum
        self.sum(:rating)
    end

    #returns a list of all the shows that have a rating greater than 5
    def self.popular_shows
        self.where("rating > 5")
    end

    #returns an arry of all the shows sorted in alpha order according to their names
    def self.shows_by_alphabetical_order
        self.order(:name)
    end
end