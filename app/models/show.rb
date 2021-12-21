require "pry"

class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network

    def actors_list
        characters.map{ |char| char.actor.full_name}
    end
end


# Actor.create ({first_name: "Jennifer", last_name: "Lawrence"})
# Show.create ({name: "Hunger Games", day: "Friday", season: "one", genre: "Family")
# Character.create ({name: "Katniss", actor_id: 1, show_id: 1, catchphrase: "I volunteer as tribute!"})

# Actor.create ({first_name: "Emilia", last_name: "Clarke"})
# Show.create ({name: "Game of Thrones", day: "Tuesday", season: "three", genre: "Fantasy", network_id: 1})
# Character.create ({name: "Kahleesi", actor_id: 1, show_id: 2, catchphrase: "I am the Queen of Dragons"})
# Network.create ({call_letters: "NBC", channel: 101})
