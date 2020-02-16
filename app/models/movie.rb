class Movie < ActiveRecord::Base
    def self.get_all_ratings
        arr = Array.new
        self.select('rating').uniq.each {|ele| arr.push(ele.rating)}
        arr.sort.uniq
    end
end
