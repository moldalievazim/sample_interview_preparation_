=begin
christmas_tree.rb

It's Christmas time! 🎄

Can you debug these classes in time to celebrate? 🎅

Expected output:
Building a 5-foot Christmas tree
Christmas tree with 5 feet and 0 ornaments
Adding ornaments...
Christmas tree with 5 feet and 10 ornaments
Turning on the lights...
Christmas tree with 5 feet, 10 ornaments, and lights on
Placing 3 gifts under the tree
Gift: Teddy Bear, wrapped in Red paper
Gift: Doll, wrapped in Blue paper
Gift: Car, wrapped in Green paper
Turning off the lights...
Christmas tree with 5 feet, 10 ornaments, and lights off


=end
class ChristmasTree
    attr_accessor :height, :ornaments, :lights_on
  
    def initialize(height)
      @height = height
      @ornaments = 0
      @lights_on = false
    end
  
    def add_ornaments(count)
      @ornaments += count  #UndefinedMethod @ornaments
    end
  
    def lights_status
      if @lights_on
        return "light is on"
      else
        return "light is off"
      end
    end

    def no_lights_status
      "Christmas tree with #{@height} feet and #{@ornaments} ornaments"
    end
  
    def to_string
      "Christmas tree with #{@height} feet, #{@ornaments} ornaments, and #{lights_status}"
    end
  
    def turn_on_light
      @lights_on = true
    end
  
    def turn_off_light
      @lights_on = false
    end
  
    def self.celebrate(height, gifts)
      christmasTree = ChristmasTree.new(height) #NameError ChristmasTreee
      puts "Building a #{height}-foot Christmas tree"
      puts christmasTree.no_lights_status
      puts "Adding ornaments..."
      christmasTree.add_ornaments(10) #NameError add_decoration
      puts christmasTree.no_lights_status
      puts "Turning on the lights..."
      christmasTree.turn_on_light 
      puts christmasTree.to_string
  
      puts "Placing #{gifts.count} gifts under the tree"
      gifts.each do |gift|
        puts gift.description
      end
  
      puts "Turning off the lights..."

      christmasTree.turn_off_light #undefined method light_off
      puts christmasTree.to_string
  
      christmasTree
    end
  end
  