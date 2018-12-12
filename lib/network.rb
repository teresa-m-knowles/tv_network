require './lib/show'
require './lib/character'
require 'pry'

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
  actor_salary = Hash.new

  @all_characters.each do |character|
    actor_salary[character.actor] = character.salary
  end

  actor_salary


end

end
