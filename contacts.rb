require 'pry' # Require the 'pry' library for debugging

def contacts #method 'contacts'
  {
    "Jon Snow" => { 
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddie Mercury" => { 
      name: "Freddie", 
      email: "freddie@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
end

def remove_strawberry(contacts) # method 'remove_strawberry' with 'contacts' as an argument
  contacts.each do |person, details_hash| # iterate over the 'contacts' hash, assigning each key-value pair to 'person' and 'details_hash'
    if person == "Freddy Mercury" # is 'person' equal to "Freddy Mercury"
      details_hash.each do |attribute, data| # iterate over the 'details_hash', assigning each key-value pair to 'attribute' and 'data'
        if attribute == :favorite_ice_cream_flavors # is 'attribute' equal to :favorite_ice_cream_flavors
          data.delete("strawberry") # delete elements from 'data' array that match "strawberry"
        end
      end
    end
  end
end

pp remove_strawberry(contacts)
