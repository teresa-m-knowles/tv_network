require './lib/show'
require './lib/character'

class Network

  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
    @all_characters = []
  end

  def add_show(show)
    @shows << show
    @all_characters << show.characters
    @all_characters.flatten!
  end


  def highest_paid_actor

    highest_paid_character = @all_characters.max_by do |character|
      character.salary
    end
    highest_paid_character.actor
  end

  def payroll
    Hash[@all_characters.map { |character| [character.actor, character.salary]}]
  end


end
