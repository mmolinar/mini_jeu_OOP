class Player
 attr_accessor :name, :life_points
 
  def initialize(name)
    @name = name
    @life_points = 10
  end

  def show_state
    puts "#{@name} has #{@life_points} life points."
  end

  def gets_damage(damage)
    @life_points = @life_points - damage
    if @life_points <= 0
      puts "#{name} is dead!"
    end
  end

  def attacks(player2)
    damg = compute_damage
    puts "#{@name} hurts #{player2.name} and takes a hit of #{damg} points"
    player2.gets_damage(damg)
  end

  def compute_damage
    return rand(1..6)
  end
end