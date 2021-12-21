class Network < ActiveRecord::Base
  has_many :shows
  
  def sorry
    # passed_shows = Show.all.filter{|s| s.network_id != self.id}
    "We're sorry about passing on John Mulaney's pilot"
    # Show.all.filter{|s| s.network_id != self.id}.each {|p| puts "We're sorry about passing on #{p.name}'s pilot"}
  end
  
end

# self.shows.filter{|s| s.network_id != self.id}
# Show.create({name: "Full House", day: "Monday", season: "seven", genre: "Family", network_id: 4})