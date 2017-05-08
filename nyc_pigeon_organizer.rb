require "pry"


def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}

   data.each do |trait, options|
     # Hash Iteration
     # trait = color/gender/lives
     # options = multiple options for trait
     
     options.each do |option, pigeons|
       # Hash Iteration
       # option = specific trait option
       # pigeons = array of pigeons
       
       pigeons.each do |pigeon|
         # Array Iteration
         new_hash[pigeon] ||= {}
         new_hash[pigeon][trait] ||= []
         new_hash[pigeon][trait] << option.to_s
       end
     end
   end

   new_hash
 end
