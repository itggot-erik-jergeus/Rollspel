class Swordfighter
  def initialize(name:, strength:, vitality:, speed:, luck:)
    if strength + vitality + speed + luck > 10
      tot_stat = strength + vitality + speed + luck
      "You have selected too high base stats, the maximum sum is 10, you selected #{tot_stat}"
    else
      @name = name
      @strength = strength
      @vitality = vitality
      @speed = speed
      @luck = luck
      @health = 150.0 + @vitality * 20
      @armor = 1.0
      @weapon = 1.0
      @dodge = 1 - 0.005 * @speed
      @base_dmg = 30.0 + @strength * 10.0
      @experience = 0.0
      @level = 1.0
    end
  end

  def my_exp
    @experience
  end
  def my_level
    @level
  end
  def my_hp
    @health
  end
  def my_stats
    "#{@name}s stats are as follows:\nStrength = #{@strength}\nVitality = #{@vitality}\nSpeed = #{@speed}\nLuck = #{@luck}\nHealth = #{@health}\nArmor Multiplier = #{@armor}\nWeapon Multiplier = #{@weapon}\nDodge Chance = #{@dodge}\nBase Damage = #{@base_dmg}"
  end
end

class Ranger
  def initialize(name:, dexterity:, vitality:, agility:, luck:)
    if dexterity + vitality + agility + luck > 10
      tot_stat = dexterity + vitality + agility + luck
      "You have selected too high base stats, the maximum sum is 10, you selected #{tot_stat}"
    else
      @name = name
      @dexterity = dexterity
      @vitality = vitality
      @agility = agility
      @luck = luck
      @health = 120.0 + @vitality * 15
      @armor = 1.0
      @weapon = 1.0
      @dodge = 1 - 0.01 * @agility
      @base_dmg = 30.0 + @dexterity * 10.0
      @experience = 0.0
      @level = 1.0
    end
  end

  def my_exp
    @experience
  end
  def my_level
    @level
  end
  def my_hp
    @health
  end
  def my_stats
    "#{@name}s stats are as follows:\nDexterity = #{@dexterity}\nVitality = #{@vitality}\nAgility = #{@agility}\nLuck = #{@luck}\nHealth = #{@health}\nArmor Multiplier = #{@armor}\nWeapon Multiplier = #{@weapon}\nDodge Chance = #{@dodge}\nBase Damage = #{@base_dmg}"
  end
end

class Sorcerer
  def initialize(name:, intelligence:, vitality:, willpower:, luck:)
    if intelligence + vitality + willpower + luck > 10
      tot_stat = intelligence + vitality + willpower + luck
      "You have selected too high base stats, the maximum sum is 10, you selected #{tot_stat}"
    else
    @name = name
    @intelligence = intelligence
    @vitality = vitality
    @willpower = willpower
    @luck = luck
    @health = 100.0 + @vitality * 12.5
    @armor = 1.0
    @weapon = 1.0
    @dodge = 1.0
    @base_dmg = 35.0 + @intelligence * 10.0
    @experience = 0.0
    @level = 1.0
    end
  end

  def my_exp
    @experience
  end
  def my_level
    @level
  end
  def my_hp
    @health
  end
  def my_stats
    "#{@name}s stats are as follows:\nIntelligence = #{@intelligence}\nVitality = #{@vitality}\nWillpower = #{@willpower}\nLuck = #{@luck}\nHealth = #{@health}\nArmor Multiplier = #{@armor}\nWeapon Multiplier = #{@weapon}\nDodge Chance = #{@dodge}\nBase Damage = #{@base_dmg}"
  end
end

Lorem = Sorcerer.new(name: "Lorem", intelligence: 2, vitality: 2, willpower: 2, luck: 4)
Ipsum = Ranger.new(name: "Ipsum", dexterity: 2, vitality: 2, agility: 2, luck: 4)
Merol = Swordfighter.new(name: "Merol", strength: 2, vitality: 2, speed: 2, luck: 4)


puts Ipsum.my_stats