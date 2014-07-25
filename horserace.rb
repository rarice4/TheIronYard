p "HORSE RACE"

class Horse
  
   @@list_of_horses = []
  
  attr_accessor :name
  attr_accessor :speed
  

    def initialize
      self.name = nil
      self.speed = nil
   
    end
      def horse_stats
        ["#{self.name}", "#{self.speed}"]
      end
        def self.add_horse(*horse_attributes)
          horse = Horse.new
          horse.name = horse_attributes[0]
          horse.speed = horse_attributes[1]
    
          @@list_of_horses.push horse
          horse
        end
  def self.display_horses
    @@list_of_horses
  end
  
end

######################
class Game
  attr_accessor :start
  attr_accessor :score
  attr_accessor :end

    def self.add_game(*g_attributes)
      g = Game.new
      g.start = g_attributes[0]
      g.score = g_attributes[1]
      g.end = g_attributes[2]
      g
    end
    #########################
  def create_horses
    puts "Name your trusty steed"
    user_horse = gets.chomp
    print "Get ready to race " 
    print user_horse
    puts "!!!!!!!!!!!"

    Horse.add_horse("pegasus", rand(1..6))
    Horse.add_horse("Unicorn", rand(1..6))
    Horse.add_horse("Dragon-Horse", rand(1..6))
    Horse.add_horse(user_horse, rand(1..6))
  end
####################################
  def arrays

    
  end

  def first_turn

    @position_array_pegasus = []
    @position_array_unicorn = []
    @position_array_dragon = []
    @position_array_user = []
  
    @position_array_pegasus.push Horse.display_horses[0].horse_stats[1].to_i
    @position_array_unicorn.push Horse.display_horses[1].horse_stats[1].to_i
    @position_array_dragon.push Horse.display_horses[2].horse_stats[1].to_i
    @position_array_user.push Horse.display_horses[3].horse_stats[1].to_i

    print @position_array_pegasus
    print @position_array_unicorn
    print @position_array_dragon 
    print @position_array_user
  
    b = gets.chomp
    
  end

    def track
      while (@position_array_user.reduce :+).to_i <= 50 && (@position_array_dragon.reduce :+).to_i <= 50 && (@position_array_unicorn.reduce :+).to_i && 50 && (@position_array_pegasus.reduce :+).to_i <= 50

      z = gets.chomp
          if z == "f"

          @position_array_pegasus.push rand(1..8)
          @position_array_unicorn.push rand(1..8)
          @position_array_dragon.push rand(1..9)
          @position_array_user.push rand(2..9)

          (@position_array_pegasus.reduce :+).to_i.times do
            print "*"
          end
          puts "Pegasus"
          (@position_array_unicorn.reduce :+).to_i.times do
            print "*"
          end
          puts "Unicorn"

          (@position_array_dragon.reduce :+).to_i.times do
            print "*"
          end
          puts "Dragon-Horse"
          (@position_array_user.reduce :+).to_i.times do
            print "*"
          end
          puts "user_horse"


           puts @position_array_pegasus.reduce :+
           puts @position_array_unicorn.reduce :+
           puts @position_array_dragon.reduce :+ 
           puts @position_array_user.reduce :+
          end
     end
   end

end


a = Game.add_game(1, 2, 3)
a.create_horses
a.first_turn
a.track



print Horse.display_horses
print 








 


  # z = gets.chomp
  # while z == ""
  #   first_turn
  #   add_turn
    
  #   print @position_array_pegasus
  #   print @position_array_unicorn
  #   print @position_array_dragon
  #   print @position_array_user
  
  #   z = gets.chomp
  # end

# p Horse.horse_stats
#runrace
# peg = (position_array_pegasus.reduce :+).to_i
# uni = (position_array_unicorn.reduce :+).to_i
# dra = (position_array_dragon.reduce :+).to_i
# usr = (position_array_user.reduce :+).to_i

# p Horse.display_horses


##############
# def horse_1
#   @track1 = [rand(1..6)]
#   print @track1
#     @track1[0].times do 
#     print "*"
#     end
# puts "Horse1"
# end

# def horse_2
#   @track2 = [rand(1..6)]
#   print @track2
#     @track2[0].times do 
#     print "*"
#     end
# puts "Horse2"
# end

# def horse_3
#   @track3 = [rand(1..6)]
#   print @track3
#     @track3[0].times do 
#     print "*"
#     end
# puts "Horse3"

# end

# def horse_4
#   @track4 = [rand(1..6)]
#   print @track4
#     @track4[0].times do 
#     print "*"
#     end
# puts "Horse4"
# end
# ##########################
# # horse_1.push rand(1..6)

# # puts horse_1


# run = gets.chomp

# while run == ""
#   horse_1 
#   horse_2
#   horse_3
#   horse_4
#   break
# end
# r = "#{@track1.push rand(1..6)} #{@track2.push rand(1..6)} #{@track3.push rand(1..6)} #{@track4.push rand(1..6)}"

# puts r


